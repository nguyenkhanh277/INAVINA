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
using Inavina.Core.Domain;
using Inavina.Core;
using Inavina.Core.Helper;

namespace Inavina.View.RegistBarcodes
{
    public partial class frmRegistBarcodeAddEdit : DevExpress.XtraEditors.XtraForm
    {
        ProjectDataContext _projectDataContext = new ProjectDataContext();
        RegistBarcodeRepository _registBarcodeRepository;
        PartNumberRepository _partNumberRepository;
        MachineRepository _machineRepository;
        MoldRepository _moldRepository;
        ShiftRepository _shiftRepository;

        protected override void OnClosing(System.ComponentModel.CancelEventArgs e)
        {
            base.OnClosing(e);
            _projectDataContext.Dispose();
        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            KeyEventArgs e = new KeyEventArgs(keyData);
            if (e.KeyCode == Keys.F1)
            {
                btnSave_Click(null, null);
                return true;
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }

        string _id = "";
        public frmRegistBarcodeAddEdit()
        {
            InitializeComponent();
        }

        public frmRegistBarcodeAddEdit(string id)
        {
            InitializeComponent();
            _id = id;
        }

        private void frmRegistBarcodeAddEdit_Load(object sender, EventArgs e)
        {
            _registBarcodeRepository = new RegistBarcodeRepository(_projectDataContext);
            _partNumberRepository = new PartNumberRepository(_projectDataContext);
            _machineRepository = new MachineRepository(_projectDataContext);
            _moldRepository = new MoldRepository(_projectDataContext);
            _shiftRepository = new ShiftRepository(_projectDataContext);
            LanguageTranslate.ChangeLanguageForm(this);
            LoadPartNumberData();
            LoadMachineData();
            LoadShiftData();
            LoadMoldData();
            if (String.IsNullOrEmpty(_id))
            {
                Clear();
            }
            else
            {
                Close();
            }
        }

        private void frmRegistBarcodeAddEdit_Shown(object sender, EventArgs e)
        {
            txtQuantity.Focus();
        }

        private void Clear()
        {
            dtpRegistDate.Value = DateTime.Now;
            txtQuantity.Text = "0";
            txtQuantity.Focus();
        }

        private void LoadPartNumberData()
        {
            cbbPartNumber.DataSource = _partNumberRepository.GetAll().ToList();
            cbbPartNumber.SelectedIndex = 0;
        }

        private void LoadMachineData()
        {
            cbbMachine.DataSource = _machineRepository.GetAll().ToList();
            cbbMachine.SelectedIndex = 0;
        }

        private void LoadShiftData()
        {
            cbbShift.DataSource = _shiftRepository.GetAll().ToList();
            cbbShift.SelectedIndex = 0;
        }

        private void LoadMoldData()
        {
            cbbMold.DataSource = _moldRepository.GetAll().ToList();
            cbbMold.SelectedIndex = 0;
        }

        private bool CheckData()
        {
            if (cbbPartNumber.SelectedValue == null || String.IsNullOrEmpty(cbbPartNumber.Text.Trim()))
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa chọn dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cbbPartNumber.Focus();
                return false;
            }
            else if (cbbMachine.SelectedValue == null || String.IsNullOrEmpty(cbbMachine.Text.Trim()))
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa chọn dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cbbMachine.Focus();
                return false;
            }
            else if (cbbMold.SelectedValue == null || String.IsNullOrEmpty(cbbMold.Text.Trim()))
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa chọn dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cbbMold.Focus();
                return false;
            }
            else if (cbbShift.SelectedValue == null || String.IsNullOrEmpty(cbbShift.Text.Trim()))
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa chọn dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cbbShift.Focus();
                return false;
            }
            else if (txtQuantity.Text.Trim() == "0")
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa điền dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtQuantity.Focus();
                return false;
            }
            return true;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (!CheckData()) return;
                //Table RegistBarcode
                RegistBarcode registBarcode = new RegistBarcode();
                int seq = int.Parse(_registBarcodeRepository.GetSEQ(dtpRegistDate.Value, cbbShift.Text.Trim()));
                string barcode = "";
                DataTable listBarcode = new DataTable();
                listBarcode.Columns.Add("Barcode", typeof(string));
                listBarcode.Columns.Add("PartNo", typeof(string));
                listBarcode.Columns.Add("DateShift", typeof(string));
                listBarcode.Columns.Add("MoldNoSEQ", typeof(string));
                listBarcode.Columns.Add("VN", typeof(string));
                for (int i = 0; i < int.Parse(txtQuantity.Text.Trim()); i++)
                {
                    //Generate barcode
                    seq++;
                    barcode = String.Format("{0}{1}{2}{3}{4}{5}",
                        cbbPartNumber.Text.Trim(),
                        dtpRegistDate.Value.ToString("yyMMdd"),
                        cbbMachine.Text.Trim(),
                        cbbShift.Text.Trim(),
                        cbbMold.Text.Trim(),
                        seq.ToString("0000"));
                    //Set list barcode
                    listBarcode.Rows.Add(new string[] {
                        barcode,
                        cbbPartNumber.Text.Trim(),
                        dtpRegistDate.Value.ToString("yyMMdd") + cbbShift.Text.Trim(),
                        cbbMold.Text.Trim() + "SEQ" + seq.ToString("0000"),
                        "VN001200"
                    });
                    //Insert data
                    registBarcode = new RegistBarcode();
                    registBarcode.Id = _id;
                    registBarcode.PartNo = cbbPartNumber.Text.Trim();
                    registBarcode.RegistDate = dtpRegistDate.Value.Date;
                    registBarcode.MachineNo = cbbMachine.Text.Trim();
                    registBarcode.MoldNo = cbbMold.Text.Trim();
                    registBarcode.ShiftNo = cbbShift.Text.Trim();
                    registBarcode.SEQ = seq.ToString("0000");
                    registBarcode.Barcode = barcode;
                    registBarcode.Status = GlobalConstants.StatusValue.Using;
                    _registBarcodeRepository.Save(registBarcode);
                }
                UnitOfWork unitOfWork = new UnitOfWork(_projectDataContext);
                int result = unitOfWork.Complete();
                if (result > 0)
                {
                    if (String.IsNullOrEmpty(_id))
                    {
                        _registBarcodeRepository.PrintListBarcode(listBarcode);
                        Clear();
                    }
                    else
                    {
                        DialogResult = DialogResult.OK;
                        Close();
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

        private void btnClose_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnAddPartNumber_Click(object sender, EventArgs e)
        {
            PartNumbers.frmPartNumberAddEdit frm = new PartNumbers.frmPartNumberAddEdit(true);
            DialogResult dr = frm.ShowDialog();
            if (dr == DialogResult.OK && frm.Tag != null)
            {
                LoadPartNumberData();
                cbbPartNumber.Text = (string)frm.Tag;
            }
        }

        private void btnAddMachine_Click(object sender, EventArgs e)
        {
            Machines.frmMachineAddEdit frm = new Machines.frmMachineAddEdit(true);
            DialogResult dr = frm.ShowDialog();
            if (dr == DialogResult.OK && frm.Tag != null)
            {
                LoadMachineData();
                cbbMachine.Text = (string)frm.Tag;
            }
        }

        private void btnShift_Click(object sender, EventArgs e)
        {
            Shifts.frmShiftAddEdit frm = new Shifts.frmShiftAddEdit();
            DialogResult dr = frm.ShowDialog();
            if (dr == DialogResult.OK && frm.Tag != null)
            {
                LoadShiftData();
                cbbShift.Text = (string)frm.Tag;
            }
        }

        private void btnMold_Click(object sender, EventArgs e)
        {
            Molds.frmMoldAddEdit frm = new Molds.frmMoldAddEdit();
            DialogResult dr = frm.ShowDialog();
            if (dr == DialogResult.OK && frm.Tag != null)
            {
                LoadMoldData();
                cbbMold.Text = (string)frm.Tag;
            }
        }

        private void txtQuantity_EditValueChanged(object sender, EventArgs e)
        {
            if (!GeneralHelper.IsStringDouble(txtQuantity.Text.Trim()))
                txtQuantity.Text = "0";
            txtQuantity.Text = double.Parse(txtQuantity.Text.Trim()).ToString("N0");
            txtQuantity.Select(txtQuantity.Text.Length, 0);
        }

        private void txtQuantity_Click(object sender, EventArgs e)
        {
            txtQuantity.SelectAll();
        }
    }
}