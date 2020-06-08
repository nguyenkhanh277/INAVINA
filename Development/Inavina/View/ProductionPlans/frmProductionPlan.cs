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

namespace Inavina.View.ProductionPlans
{
    public partial class frmProductionPlan : DevExpress.XtraEditors.XtraForm
    {
        ProjectDataContext _projectDataContext;
        ProductionPlanRepository _productionPlanRepository;

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
                btnAdd_Click(null, null);
                return true;
            }
            else if (e.KeyCode == Keys.F3)
            {
                btnEdit_Click(null, null);
                return true;
            }
            else if (e.KeyCode == Keys.F3)
            {
                btnCancel_Click(null, null);
                return true;
            }
            else if (e.KeyCode == Keys.F4)
            {
                btnExcel_Click(null, null);
                return true;
            }
            else if (e.KeyCode == Keys.F5)
            {
                btnRefresh_Click(null, null);
                return true;
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }

        public frmProductionPlan()
        {
            InitializeComponent();
        }

        private void frmProductionPlan_Load(object sender, EventArgs e)
        {
            LanguageTranslate.ChangeLanguageForm(this);
            LanguageTranslate.ChangeLanguageGridView(viewDuLieu);
            Search();
        }

        private void Search()
        {
            _projectDataContext = new ProjectDataContext();
            _productionPlanRepository = new ProductionPlanRepository(_projectDataContext);
            List<Expression<Func<ProductionPlan, bool>>> expressions = new List<Expression<Func<ProductionPlan, bool>>>();
            DateTime fromDate = DateTime.Parse(dtpFromDate.Value.ToString("yyyy-MM-dd 00:00:00"));
            DateTime toDate = DateTime.Parse(dtpToDate.Value.ToString("yyyy-MM-dd 23:59:59"));
            expressions.Add(_ => _.ExpectedDeliveryDate >= fromDate && _.ExpectedDeliveryDate <= toDate);
            dgvDuLieu.DataSource = _productionPlanRepository.Find(expressions);
            Control();
        }

        private void Control()
        {
            btnEdit.Enabled = btnCancel.Enabled = btnExcel.Enabled = (viewDuLieu.RowCount > 0);
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            frmProductionPlanAddEdit frm = new frmProductionPlanAddEdit();
            frm.ShowDialog();
            Search();
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            if (viewDuLieu.RowCount > 0)
            {
                frmProductionPlanAddEdit frm = new frmProductionPlanAddEdit(viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "Id").ToString());
                DialogResult dr = frm.ShowDialog();
                if (dr == DialogResult.OK)
                {
                    Search();
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (viewDuLieu.RowCount > 0 && XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Bạn có muốn hủy thông tin này?"), LanguageTranslate.ChangeLanguageText("Xác nhận"), MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                _productionPlanRepository.Cancel(viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "Id").ToString());
                UnitOfWork unitOfWork = new UnitOfWork(_projectDataContext);
                int result = unitOfWork.Complete();
                if (result > 0)
                {
                    Search();
                }
                else
                {
                    XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Hủy thất bại"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }
        }

        private void btnExcel_Click(object sender, EventArgs e)
        {
            GeneralHelper.ExportExcel(dgvDuLieu);
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            Search();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void viewDuLieu_KeyDown(object sender, KeyEventArgs e)
        {
            if (viewDuLieu.RowCount > 0)
            {
                if (e.Control && e.KeyCode == Keys.C)
                {
                    Clipboard.SetText(viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, viewDuLieu.FocusedColumn.Name).ToString());
                    e.Handled = true;
                }
            }
        }

        private void viewDuLieu_CustomDrawRowIndicator(object sender, DevExpress.XtraGrid.Views.Grid.RowIndicatorCustomDrawEventArgs e)
        {
            if (e.RowHandle >= 0)
                e.Info.DisplayText = (e.RowHandle + 1).ToString();
        }
    }
}