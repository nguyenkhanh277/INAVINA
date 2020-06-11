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

namespace Inavina.View.ProductionPlans
{
    public partial class frmProductionPlanAddEdit : DevExpress.XtraEditors.XtraForm
    {
        ProjectDataContext _projectDataContext = new ProjectDataContext();
        ProductionPlanRepository _productionPlanRepository;
        PartNumberRepository _partNumberRepository;

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
        public frmProductionPlanAddEdit()
        {
            InitializeComponent();
        }

        public frmProductionPlanAddEdit(string id)
        {
            InitializeComponent();
            _id = id;
        }

        private void frmProductionPlanAddEdit_Load(object sender, EventArgs e)
        {
            _productionPlanRepository = new ProductionPlanRepository(_projectDataContext);
            _partNumberRepository = new PartNumberRepository(_projectDataContext);
            LanguageTranslate.ChangeLanguageForm(this);
            LoadPartNumberData();
            if (String.IsNullOrEmpty(_id))
            {
                Clear();
            }
            else
            {
                Close();
            }
        }

        private void Clear()
        {
            txtWorkOrder.Text = "";
            dtpRegistDate.Value = DateTime.Now;
            txtQuantity.Text = "0";
            txtWorkOrder.Focus();
        }

        private void LoadPartNumberData()
        {
            cbbPartNumber.DataSource = _partNumberRepository.GetAll().ToList();
            cbbPartNumber.SelectedIndex = 0;
        }

        private bool CheckData()
        {
            if (String.IsNullOrEmpty(txtWorkOrder.Text.Trim()))
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa chọn dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtWorkOrder.Focus();
                return false;
            }
            else if (cbbPartNumber.SelectedValue == null || String.IsNullOrEmpty(cbbPartNumber.Text.Trim()))
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa chọn dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cbbPartNumber.Focus();
                return false;
            }
            ProductionPlan productionPlan = _productionPlanRepository.FirstOrDefault(_ => _.WorkOrder.Equals(txtWorkOrder.Text.Trim()));
            if (productionPlan != null &&
                (
                    String.IsNullOrEmpty(_id) ||
                    (!String.IsNullOrEmpty(_id) && txtWorkOrder.Text.Trim() != productionPlan.WorkOrder)
                ))
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Dữ liệu đã tồn tại"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtWorkOrder.Focus();
                return false;
            }
            return true;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (!CheckData()) return;
                //Table ProductionPlan
                ProductionPlan productionPlan = new ProductionPlan();
                productionPlan.Id = _id;
                productionPlan.WorkOrder = txtWorkOrder.Text.Trim();
                productionPlan.PartNo = cbbPartNumber.Text.Trim();
                productionPlan.Model = "";
                productionPlan.ExpectedDeliveryDate = dtpRegistDate.Value.Date;
                productionPlan.Quantity = double.Parse(txtQuantity.Text.Trim());
                productionPlan.ProductionStatus = GlobalConstants.ProductionStatusValue.None;
                productionPlan.Status = GlobalConstants.StatusValue.Using;
                _productionPlanRepository.Save(productionPlan);
                UnitOfWork unitOfWork = new UnitOfWork(_projectDataContext);
                int result = unitOfWork.Complete();
                if (result > 0)
                {
                    if (String.IsNullOrEmpty(_id))
                    {
                        XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Lưu thành công"), LanguageTranslate.ChangeLanguageText("Thông báo"));
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