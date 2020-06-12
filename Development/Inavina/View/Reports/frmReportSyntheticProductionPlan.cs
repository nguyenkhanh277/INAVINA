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

namespace Inavina.View.Reports
{
    public partial class frmReportSyntheticProductionPlan : DevExpress.XtraEditors.XtraForm
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
            if (e.KeyCode == Keys.F4)
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

        public frmReportSyntheticProductionPlan()
        {
            InitializeComponent();
        }

        private void frmReportSyntheticProductionPlan_Load(object sender, EventArgs e)
        {
            LanguageTranslate.ChangeLanguageForm(this);
            LanguageTranslate.ChangeLanguageGridView(viewDuLieu);
            Search();
        }

        private void Search()
        {
            _projectDataContext = new ProjectDataContext();
            _productionPlanRepository = new ProductionPlanRepository(_projectDataContext);
            DateTime fromDate = DateTime.Parse(dtpFromDate.Value.ToString("yyyy-MM-dd 00:00:00"));
            DateTime toDate = DateTime.Parse(dtpToDate.Value.ToString("yyyy-MM-dd 23:59:59"));
            dgvDuLieu.DataSource = _productionPlanRepository.GetReportSyntheticProductionPlan(fromDate, toDate).OrderBy(_ => _.PartNo);
            Control();
        }

        private void Control()
        {
            btnExcel.Enabled = (viewDuLieu.RowCount > 0);
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

        private void viewDuLieu_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.RowHandle >= 0)
            {
                DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
                if (e.Column.FieldName == "QuantityNG" || view.GetRowCellValue(e.RowHandle, "PartNo").ToString() == "Mã vạch bị NOT FOUND + NG")
                {
                    e.Appearance.ForeColor = Color.Red;
                }
                else if (e.Column.FieldName == "QuantityOK")
                {
                    e.Appearance.ForeColor = Color.Blue;
                    e.Appearance.Font = new Font("Segoe UI", 10F, FontStyle.Bold);
                }
            }
        }
    }
}