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
using Inavina.Persistence.Repositories;
using Inavina.Core;
using Inavina.Core.Domain;
using System.IO.Ports;

namespace Inavina.View.ScanBarcodes
{
    public partial class frmScanBarcode2 : DevExpress.XtraEditors.XtraForm
    {
        ProjectDataContext _projectDataContext;
        ScanBarcodeRepository _scanBarcodeRepository;
        RegistBarcodeRepository _registBarcodeRepository;
        string barcode;
        string portname;
        SerialPort AlarmPort;
        //DateTime PreviousTime = new DateTime();
        //DateTime TimeNow = new DateTime();
        //TimeSpan diff = new TimeSpan();
        //double mili;

        int iOK, iNG, iNotFound, iDuplicate;
        public frmScanBarcode2()
        {
            InitializeComponent();
        }

        private void frmScanBarcode2_Load(object sender, EventArgs e)
        {
            _projectDataContext = new ProjectDataContext();
            _scanBarcodeRepository = new ScanBarcodeRepository(_projectDataContext);
            _registBarcodeRepository = new RegistBarcodeRepository(_projectDataContext);

            iOK = iNG = iDuplicate = iNotFound = 0;
            lblUser.Text = GlobalConstants.username;
            lblDateTimer.Text = DateTime.Now.ToString();
            txtBarcode.Focus();

            AlarmPort = new SerialPort();
            AlarmPort.DataReceived += new SerialDataReceivedEventHandler(this.Alarm_DataReceived);
            Control.CheckForIllegalCrossThreadCalls = false;
            //DisConnectCOM(portname);
            //ConnectCOM(portname, 9600);

            tmrTime.Interval = 1000;
            tmrTime.Start();
        }

        private void txtBarcode_KeyPress(object sender, KeyPressEventArgs e)
        {
            try
            {
                #region Read by barcode ()
                //if (txtBarcode.Text.Length == 1)
                //    PreviousTime = DateTime.Now;

                //if (e.KeyChar == 13) 
                //{
                //    TimeNow = DateTime.Now;
                //    diff = TimeNow - PreviousTime;
                //    mili = diff.TotalMilliseconds;

                //    if (mili < 120)
                //    {
                //        MessageBox.Show("DÙNG SÚNG BẮN BARCODE ĐỂ ĐĂNG NHẬP", "THOÁT", MessageBoxButtons.OKCancel, MessageBoxIcon.Stop, MessageBoxDefaultButton.Button1);
                //    }
                //    else
                //    {
                //    }
                //}
                #endregion

                if (e.KeyChar == 13)
                {
                    Clear();
                    if (txtBarcode.Text == "")
                    {
                        iNG++;
                        lblResult.Text = "NG";
                        lblResult.BackColor = Color.Red;
                        ControlDevice(GlobalConstants.ControlSerialData.NG);
                    }
                    else
                    {
                        barcode = txtBarcode.Text.ToString();
                        var registbarcode = this.IsRegisterBarcode(barcode);
                        if (registbarcode != null)
                        {
                            txtPartNumber.Text = registbarcode.PartNo;
                            txtDate.Text = registbarcode.RegistDate.ToString();
                            txtMoldNo.Text = registbarcode.MoldNo;
                            txtVN.Text = registbarcode.MachineNo;

                            if (this.IsNotDuplicate(barcode))
                            {
                                int result = InsertDB(GlobalConstants.ResultStatusValue.OK);
                                if (result > 0)
                                {
                                    iOK++;
                                    lblResult.Text = "OK";
                                    lblResult.BackColor = Color.LightGreen;
                                    ControlDevice(GlobalConstants.ControlSerialData.OK);
                                }
                                else
                                {
                                    ControlDevice(GlobalConstants.ControlSerialData.NG);
                                    XtraMessageBox.Show("Đăng ký kết quả thất bại ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                }
                            }
                            else
                            {
                                int result = InsertDB(GlobalConstants.ResultStatusValue.Duplicate);
                                if (result > 0)
                                {
                                    iDuplicate++;
                                    lblResult.Text = "DUPLICATE";
                                    lblResult.BackColor = Color.Orange;
                                    ControlDevice(GlobalConstants.ControlSerialData.NG);
                                }
                                else
                                {
                                    ControlDevice(GlobalConstants.ControlSerialData.NG);
                                    XtraMessageBox.Show("Đăng ký kết quả thất bại ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                }
                            }
                        }
                        else
                        {
                            int result = InsertDB(GlobalConstants.ResultStatusValue.NotFound);
                            if (result > 0)
                            {
                                iNotFound++;
                                lblResult.Text = "NOT FOUND";
                                lblResult.BackColor = Color.Yellow;
                                ControlDevice(GlobalConstants.ControlSerialData.NG);
                            }
                            else
                            {
                                ControlDevice(GlobalConstants.ControlSerialData.NG);
                                XtraMessageBox.Show("Đăng ký kết quả thất bại ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            }
                        }
                    }
                    Display();
                }
            }
            catch (Exception ex)
            {
                lsvLog.Items.Add(ex.ToString());
            }
        }
        private RegistBarcode IsRegisterBarcode(string _barcode)
        {
            var result = _registBarcodeRepository.FirstOrDefault(_ => _.Barcode.Trim() == _barcode.Trim()
                                                    && _.Status == GlobalConstants.StatusValue.Using);
            return result;
        }
        private bool IsNotDuplicate(string _barcode)
        {
            var result = _scanBarcodeRepository.FirstOrDefault(_ => _.Barcode.Trim() == _barcode.Trim()
                            && _.ResultStatus == GlobalConstants.ResultStatusValue.OK);
            if (result != null)
            { return false; }
            return true;
        }
        private void ControlDevice(GlobalConstants.ControlSerialData data)
        {
            //if (AlarmPort.IsOpen == true)
            //{
            //    if (data == GlobalConstants.ControlSerialData.OK)
            //        AlarmPort.Write(GlobalConstants.ControlSerialData.OK.ToString());
            //    else if (data == GlobalConstants.ControlSerialData.NG)
            //        AlarmPort.Write(GlobalConstants.ControlSerialData.OK.ToString());
            //    else
            //        AlarmPort.Write(GlobalConstants.ControlSerialData.RESET.ToString());
            //}
        }
        private void Display()
        {
            lblNG.Text = iNG.ToString();
            lblOK.Text = iOK.ToString();
            lblNoFound.Text = iNotFound.ToString();
            lblDuplicate.Text = iDuplicate.ToString();
            txtBarcode.SelectAll();
        }
        private void Clear()
        {
            txtPartNumber.Text = "";
            txtDate.Text = "";
            txtMoldNo.Text = "";
            txtVN.Text = "";
        }

        private void tmrTime_Tick(object sender, EventArgs e)
        {
            lblDateTimer.Text = DateTime.Now.ToString();
            lblShift.Text = Shift(DateTime.Now);
        }
        private string Shift(DateTime _time)
        {
            //if (_time > DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 06, 00))
            //{
            //    return "1";
            //}
            return "1";
        }

        private void Alarm_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            string data = AlarmPort.ReadExisting();
            lsvLog.Items.Add(data);
        }
        private int InsertDB(GlobalConstants.ResultStatusValue _result)
        {
            ScanBarcode _scanbarcode = new ScanBarcode
            {
                ScanDate = DateTime.Now,
                Barcode = barcode,
                PartNo = txtPartNumber.Text.Trim(),
                MachineNo = lblMcNo.Text.Trim(),
                ShiftNo = lblShift.Text.Trim(),
                ResultStatus = _result,
                Status = GlobalConstants.StatusValue.Using
            };
            _scanBarcodeRepository.Save(_scanbarcode);
            UnitOfWork unitOfWork = new UnitOfWork(_projectDataContext);
            int result = unitOfWork.Complete();
            return result;
        }
        private void ConnectCOM(string _portname, int _baudrate)
        {
            AlarmPort.PortName = _portname;
            AlarmPort.BaudRate = _baudrate;
            try
            {
                if (AlarmPort.IsOpen == false)
                {
                    AlarmPort.Open();
                    lsvLog.Items.Add("Connected to " + _portname + " success");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
        private void DisConnectCOM(string _portname)
        {
            AlarmPort.PortName = _portname;
            try
            {
                if (AlarmPort.IsOpen == true)
                {
                    AlarmPort.Close();
                    lsvLog.Items.Add("Connected to " + _portname + " success");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }


    }
}