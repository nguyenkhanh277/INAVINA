using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using Inavina.Persistence;
using Inavina.Core;
using Inavina.Persistence.Repositories;
using Inavina.Core.Helper;
using Inavina.Core.Domain;
using System.Linq.Expressions;
using System.IO.Ports;
using System.Threading;

namespace Inavina.View.ScanBarcodes
{
    public partial class frmScanBarcode : DevExpress.XtraEditors.XtraForm
    {
        ProjectDataContext _projectDataContext;
        ScanBarcodeRepository _scanBarcodeRepository;
        RegistBarcodeRepository _registBarcodeRepository;
        PartNumberRepository _partNumberRepository;
        MachineRepository _machineRepository;
        MoldRepository _moldRepository;
        ShiftRepository _shiftRepository;
        SerialPort _serialPort;
        int _countOK = 0;
        int _countNG = 0;
        int _countDuplicate = 0;
        int _countNotFound = 0;
        int _countTimeEmpty = 0;
        string BarcodePrint = "";
        DateTime _dtStart = new DateTime();
        DateTime _dtEnd = new DateTime();
        TimeSpan _ts = new TimeSpan();
        protected override void OnClosing(System.ComponentModel.CancelEventArgs e)
        {
            base.OnClosing(e);
            _projectDataContext.Dispose();
            _serialPort.Dispose();
        }

        public frmScanBarcode()
        {
            InitializeComponent();
        }

        private void frmScanBarcode_Load(object sender, EventArgs e)
        {
            _projectDataContext = new ProjectDataContext();
            _scanBarcodeRepository = new ScanBarcodeRepository(_projectDataContext);
            _registBarcodeRepository = new RegistBarcodeRepository(_projectDataContext);
            _partNumberRepository = new PartNumberRepository(_projectDataContext);
            _machineRepository = new MachineRepository(_projectDataContext);
            _moldRepository = new MoldRepository(_projectDataContext);
            _shiftRepository = new ShiftRepository(_projectDataContext);
            LanguageTranslate.ChangeLanguageForm(this);

            LoadCount();
            LoadPartNumberData();
            LoadMachineData();
            LoadMoldData();

            _serialPort = new SerialPort();
            _serialPort.DataReceived += new SerialDataReceivedEventHandler(this.serialPort_DataReceived);
            Control.CheckForIllegalCrossThreadCalls = false;
            ClosePortCOM(GlobalConstants.portCOM);
            OpenPortCOM(GlobalConstants.portCOM, 9600);

            timer.Enabled = true;
            txtBarcode.Focus();
        }

        private void OpenPortCOM(string _portname, int _baudrate)
        {
            _serialPort.PortName = _portname;
            _serialPort.BaudRate = _baudrate;
            try
            {
                if (_serialPort.IsOpen == false)
                {
                    _serialPort.Open();
                    lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + "Mở cổng COM thành công" + "(" + _portname + "");
                    GlobalConstants.log.Debug("Mo cong COM thanh cong" + "(" + _portname + ")");
                }
            }
            catch (Exception ex)
            {
                lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + "Mở cổng COM thất bại");
                lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + ex.ToString());
                GlobalConstants.log.Error("Mo cong COM that bai. " + ex.ToString());
            }
        }

        private void ClosePortCOM(string _portname)
        {
            _serialPort.PortName = _portname;
            try
            {
                if (_serialPort.IsOpen == true)
                {
                    _serialPort.Close();
                    lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + "Đóng cổng COM thành công" + "(" + _portname + "");
                    GlobalConstants.log.Debug("Dong cong COM thanh cong" + "(" + _portname + ")");
                }
            }
            catch (Exception ex)
            {
                lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - Đóng cổng COM thất bại");
                lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + ex.ToString());
                GlobalConstants.log.Debug("Dong cong COM that bai" + "(" + _portname + ")");
            }
        }

        private void LoadCount()
        {
            //Sẽ lấy count giá trị hiện tại đã scan của ca trong ngày để gán vào khi loadForm
            _countOK = _countNG = _countDuplicate = _countNotFound = 0;
        }

        private void Clear()
        {
            _countTimeEmpty = 0;
            lblPartNumber.Text = "";
            lblDate.Text = "";
            lblMold.Text = "";
            lblVN.Text = "";
        }

        private void serialPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            string data = _serialPort.ReadExisting();
            //if(cbxAutoPrint.Checked)
            //{
            //    for (int i = 0; i < data.Length - 4; i++)
            //    {
            //        if (data[i] == 'P' && data[i + 1] == 'r' && data[i + 2] == 'i' && data[i + 3] == 'n' && data[i + 4] == 't')
            //        {
            //            Thread SendPrintCommand = new Thread(() =>
            //            {
            //                PrintBarcode(cbbPartNumber.Text.Trim(), cbbMold.Text.Trim(), cbbMachine.Text.Trim(), _shiftRepository.GetShiftNo());
            //                this.Invoke((MethodInvoker)delegate ()
            //                {
            //                    lblBarcodePrint.Text = BarcodePrint;
            //                    lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - PrintBarcode: " + BarcodePrint);
            //                });
            //            });
            //            SendPrintCommand.IsBackground = true;
            //            SendPrintCommand.Start();

            //            break;
            //        }
            //    }
            //}
            lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - DataReceived: " + data);
            GlobalConstants.log.Debug("DataReceived: " + data + " BC:" + BarcodePrint);
        }

        private int Save(string barcode, GlobalConstants.ResultStatusValue resultStatus)
        {
            ScanBarcode scanbarcode = new ScanBarcode();
            scanbarcode.ScanDate = DateTime.Now;
            scanbarcode.Barcode = barcode;
            scanbarcode.PartNo = lblPartNumber.Text.Trim();
            scanbarcode.MachineNo = GlobalConstants.machineNo;
            scanbarcode.ShiftNo = txtCa.Text.Trim();
            scanbarcode.ResultStatus = resultStatus;
            _scanBarcodeRepository.Save(scanbarcode);
            UnitOfWork unitOfWork = new UnitOfWork(_projectDataContext);
            int result = unitOfWork.Complete();
            return result;
        }

        private void ControlDisplay(string barcode, GlobalConstants.ResultStatusValue resultStatus)
        {
            if (resultStatus != GlobalConstants.ResultStatusValue.Empty)
            {
                int result = Save(barcode, resultStatus);
                if (result > 0)
                {
                    if (resultStatus == GlobalConstants.ResultStatusValue.OK)
                    {
                        _countOK++;
                        lblResult.Text = "OK";
                        lblResult.BackColor = Color.Green;
                    }
                    else if (resultStatus == GlobalConstants.ResultStatusValue.Duplicate)
                    {
                        _countDuplicate++;
                        lblResult.Text = "DUPLICATE";
                        lblResult.BackColor = Color.Orange;
                    }
                    else if (resultStatus == GlobalConstants.ResultStatusValue.NotFound)
                    {
                        _countNotFound++;
                        lblResult.Text = "NOT FOUND";
                        lblResult.BackColor = Color.DarkRed;
                    }
                    else if (resultStatus == GlobalConstants.ResultStatusValue.NG)
                    {
                        _countNG++;
                        lblResult.Text = "NG";
                        lblResult.BackColor = Color.Red;
                    }
                    lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - Barcode: " + barcode + " - " + lblResult.Text);
                    GlobalConstants.log.Debug("Barcode: " + barcode + " - " + lblResult.Text);
                }
            }
            else
            {
                lblResult.Text = ". . .";
                lblResult.BackColor = Color.FromArgb(64, 64, 64);
            }

            Thread SerialCommand = new Thread(() =>
            {
                ControlDevice(resultStatus);
            });
            SerialCommand.IsBackground = true;
            SerialCommand.Start();

            
            lblNG.Text = _countNG.ToString();
            lblOK.Text = _countOK.ToString();
            lblDuplicate.Text = _countDuplicate.ToString();
            lblNotFound.Text = _countNotFound.ToString();
        }

        private void ControlDevice(GlobalConstants.ResultStatusValue resultStatus)
        {
            if (_serialPort.IsOpen == true)
            {
                GlobalConstants.ControlSerialData data;
                if (resultStatus == GlobalConstants.ResultStatusValue.Empty)
                    data = GlobalConstants.ControlSerialData.Reset;
                else if (resultStatus == GlobalConstants.ResultStatusValue.OK)
                    data = GlobalConstants.ControlSerialData.OK;
                else
                {
                    data = GlobalConstants.ControlSerialData.NG;
                    //Ẩn textbox scan và hiện nút Reset
                    txtBarcode.Enabled = false;
                    txtBarcode.Visible = false;
                }
                _serialPort.Write(((int)data).ToString());
                //GlobalConstants.log.Debug(data);
            }
            else
            {
                //Nếu cổng chưa mở hoặc lỗi thì cần kiểm tra và message cho người dùng
                //lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + "Không kết nối được với thiết bị");
                //GlobalConstants.log.Error("Khong ket noi duoc voi thiet bi");
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtBarcode_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Tab)
            {
                txtBarcode.Focus();
                txtBarcode.SelectAll();
            }
        }
        private void txtBarcode_KeyPress(object sender, KeyPressEventArgs e)
        {
            try
            {
                if (txtBarcode.Text.Length == 1)
                {
                    _dtStart = DateTime.Now;
                }
                if (e.KeyChar == (char)13)
                {
                    _dtEnd = DateTime.Now;
                    _ts = _dtEnd - _dtStart;
                    if (GlobalConstants.mustUseBarcodeReader && _ts.TotalMilliseconds > 100)
                    {
                        lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + "YÊU CẦU PHẢI SỬ DỤNG MÁY SCAN");
                    }
                    else
                    {
                        Clear();
                        string barcode = txtBarcode.Text.ToString();
                        if (String.IsNullOrEmpty(barcode))//Không đọc được mã vạch
                        {
                            ControlDisplay("<Empty>", GlobalConstants.ResultStatusValue.NG);
                        }
                        else
                        {
                            var registbarcode = _registBarcodeRepository.CheckIsExist(barcode);
                            if (registbarcode == null)//Không tìm thấy dữ liệu
                            {
                                ControlDisplay(barcode, GlobalConstants.ResultStatusValue.NotFound);
                            }
                            else
                            {
                                lblPartNumber.Text = registbarcode.PartNo;
                                lblDate.Text = registbarcode.RegistDate.ToString("dd/MM/yyyy");
                                lblMold.Text = registbarcode.MoldNo + "SEQ" + registbarcode.SEQ;
                                lblVN.Text = GlobalConstants.VN;
                                var scanBarcode = _scanBarcodeRepository.CheckIsExist(barcode);
                                if (scanBarcode == null)//Chưa scan lần nào
                                {
                                    _countTimeEmpty = GlobalConstants.countTimeReset;
                                    ControlDisplay(barcode, GlobalConstants.ResultStatusValue.OK);
                                }
                                else//Đã có kết quả scan OK
                                {
                                    ControlDisplay(barcode, GlobalConstants.ResultStatusValue.Duplicate);
                                }
                            }
                        }
                    }
                    txtBarcode.Text = "";
                    txtBarcode.Focus();
                }
            }
            catch (Exception ex)
            {
                lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + "Lỗi trong quá trình scan barcode");
                lsvLog.Items.Add(DateTime.Now.ToString("dd/MM HH:mm:ss") + " - " + ex.ToString());
                GlobalConstants.log.Error("Loi trong qua trinh scan barcode. " + ex.ToString());
            }
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            lblTittle.Text = LanguageTranslate.ChangeLanguageText("Tài khoản") + ": " + GlobalConstants.username + "  |  " + LanguageTranslate.ChangeLanguageText("Tên đầy đủ") + ": " + GlobalConstants.fullName + "  |  " + LanguageTranslate.ChangeLanguageText("Ngày") + ": " + DateTime.Now.ToString("dd/MM HH:mm:ss") + "  |  " + LanguageTranslate.ChangeLanguageText("Máy") + ": " + GlobalConstants.machineName;
            txtCa.Text = _shiftRepository.GetShiftNo();
            //_serialPort.Write("2");
            if (_countTimeEmpty > 0)
            {
                _countTimeEmpty--;
                if (_countTimeEmpty == 0)
                {
                    ControlDisplay("", GlobalConstants.ResultStatusValue.Empty);
                }
            }
        }

        private void lsvLog_Enter(object sender, EventArgs e)
        {
            txtBarcode.Focus();
            txtBarcode.SelectAll();
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            txtBarcode.Enabled = true;
            txtBarcode.Visible = true;
            ControlDisplay("", GlobalConstants.ResultStatusValue.Empty);
            txtBarcode.Focus();
            txtBarcode.SelectAll();
        }


        #region Add Auto Print Barcode
        private void PrintBarcode (string partnumber, string mold, string machine, string shift)
        {
            try
            {
                //Table RegistBarcode
                RegistBarcode registBarcode = new RegistBarcode();
                int seq = int.Parse(_registBarcodeRepository.GetSEQ(DateTime.Today, shift));
                string barcode = "";
                string _id = "";
                DataTable listBarcode = new DataTable();
                listBarcode.Columns.Add("Barcode", typeof(string));
                listBarcode.Columns.Add("PartNo", typeof(string));
                listBarcode.Columns.Add("DateShift", typeof(string));
                listBarcode.Columns.Add("MoldNoSEQ", typeof(string));
                listBarcode.Columns.Add("VN", typeof(string));
                //Generate barcode
                seq++;
                barcode = String.Format("{0}{1}{2}{3}{4}{5}",
                    partnumber.Trim(),
                    DateTime.Today.ToString("yyMMdd"),
                    machine.Trim(),
                    shift.Trim(),
                    mold.Trim(),
                    seq.ToString("0000"));
                //Set list barcode
                listBarcode.Rows.Add(new string[] {
                    barcode,
                    "P/N:" + partnumber.Trim(),
                    "Date:" +DateTime.Today.ToString("yyMMdd") + shift.Trim(),
                    "M/N:" +mold.Trim() + "SEQ" + seq.ToString("0000"),
                    "VN:" +GlobalConstants.VN
                });
                //Insert data
                registBarcode = new RegistBarcode();
                registBarcode.Id = _id;
                registBarcode.PartNo = partnumber.Trim();
                registBarcode.RegistDate = DateTime.Today;
                registBarcode.MachineNo = machine.Trim();
                registBarcode.MoldNo = mold.Trim();
                registBarcode.ShiftNo = shift.Trim();
                registBarcode.SEQ = seq.ToString("0000");
                registBarcode.Barcode = barcode;
                _registBarcodeRepository.Save(registBarcode);

                UnitOfWork unitOfWork = new UnitOfWork(_projectDataContext);
                int result = unitOfWork.Complete();
                if (result > 0)
                {
                    if (String.IsNullOrEmpty(_id))
                    {
                        _registBarcodeRepository.PrintListBarcode(listBarcode);
                        BarcodePrint = barcode;
                        //_serialPort.Write("0");
                        //timer.Enabled = false;
                    }
                }
                else
                {
                    XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Lưu thất bại"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }
            catch (Exception ex)
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Lưu thất bại"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
        }

        private void LoadPartNumberData()
        {
            cbbPartNumber.DataSource = _partNumberRepository.GetAll().OrderBy(_ => _.PartNo).ToList();
            cbbPartNumber.SelectedIndex = 0;
        }

        private void LoadMachineData()
        {
            cbbMachine.DataSource = _machineRepository.GetAll().OrderBy(_ => _.MachineNo).ToList();
            cbbMachine.SelectedIndex = 0;
        }

        private void LoadMoldData()
        {
            cbbMold.DataSource = _moldRepository.GetAll().OrderBy(_ => _.MoldNo).ToList();
            cbbMold.SelectedIndex = 0;
        }
        #endregion

        private void cbxAutoPrint_CheckedChanged(object sender, EventArgs e)
        {
            if(cbxAutoPrint.Checked)
                cbbPartNumber.Enabled = cbbMachine.Enabled = cbbMold.Enabled = true;
            else
                cbbPartNumber.Enabled = cbbMachine.Enabled = cbbMold.Enabled = false;


        }
    }
}