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

namespace Inavina.View.RegistBarcodes
{
    public partial class frmRegistBarcode : DevExpress.XtraEditors.XtraForm
    {
        ProjectDataContext _projectDataContext;
        RegistBarcodeRepository _registBarcodeRepository;
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
            else if (e.KeyCode == Keys.F2)
            {
                btnRePrint_Click(null, null);
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

        public frmRegistBarcode()
        {
            InitializeComponent();
        }

        private void frmRegistBarcode_Load(object sender, EventArgs e)
        {
            LanguageTranslate.ChangeLanguageForm(this);
            LanguageTranslate.ChangeLanguageGridView(viewDuLieu);
            dtpFromDate.Value = DateTime.Now;
            dtpToDate.Value = DateTime.Now;
            Search();
        }

        private void Search()
        {
            _projectDataContext = new ProjectDataContext();
            _registBarcodeRepository = new RegistBarcodeRepository(_projectDataContext);
            List<Expression<Func<RegistBarcode, bool>>> expressions = new List<Expression<Func<RegistBarcode, bool>>>();
            DateTime fromDate = DateTime.Parse(dtpFromDate.Value.ToString("yyyy-MM-dd 00:00:00"));
            DateTime toDate = DateTime.Parse(dtpToDate.Value.ToString("yyyy-MM-dd 23:59:59"));
            expressions.Add(_ => _.RegistDate >= fromDate && _.RegistDate <= toDate);
            dgvDuLieu.DataSource = _registBarcodeRepository.Find(expressions).OrderBy(_ => _.RegistDate).ThenBy(_ => _.ShiftNo).ThenBy(_ => _.SEQ);
            Control();
        }

        private void Control()
        {
            btnRePrint.Enabled = btnCancel.Enabled = btnExcel.Enabled = (viewDuLieu.RowCount > 0);
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            frmRegistBarcodeAddEdit frm = new frmRegistBarcodeAddEdit();
            frm.ShowDialog();
            Search();
        }

        private void btnRePrint_Click(object sender, EventArgs e)
        {
            if (viewDuLieu.RowCount > 0)
            {
                DataTable listBarcode = new DataTable();
                listBarcode.Columns.Add("Barcode", typeof(string));
                listBarcode.Columns.Add("PartNo", typeof(string));
                listBarcode.Columns.Add("DateShift", typeof(string));
                listBarcode.Columns.Add("MoldNoSEQ", typeof(string));
                listBarcode.Columns.Add("VN", typeof(string));
                listBarcode.Rows.Add(new string[] {
                    viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "Barcode").ToString(),
                    viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "PartNo").ToString(),
                    DateTime.Parse( viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "RegistDate").ToString()).ToString("yyMMdd") + viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "ShiftNo").ToString(),
                    viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "MoldNo").ToString() + "SEQ" + viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "SEQ").ToString(),
                    "VN001200"
                });
                _registBarcodeRepository.PrintListBarcode(listBarcode);
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (viewDuLieu.RowCount > 0 && XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Bạn có muốn hủy thông tin này?"), LanguageTranslate.ChangeLanguageText("Xác nhận"), MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                _registBarcodeRepository.Cancel(viewDuLieu.GetRowCellValue(viewDuLieu.FocusedRowHandle, "Id").ToString());
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

        private void viewDuLieu_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.RowHandle >= 0)
            {
                DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
                if (view.GetRowCellValue(e.RowHandle, "Status").ToString() == "NoUse")
                {
                    e.Appearance.ForeColor = Color.Red;
                    e.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F, FontStyle.Strikeout);
                }
            }
        }
    }
}