namespace Inavina.View.Reports
{
    partial class frmReportSyntheticRegistBarcode
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnExcel = new DevExpress.XtraEditors.SimpleButton();
            this.btnRefresh = new DevExpress.XtraEditors.SimpleButton();
            this.btnClose = new DevExpress.XtraEditors.SimpleButton();
            this.dgvDuLieu = new DevExpress.XtraGrid.GridControl();
            this.viewDuLieu = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.RegistDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.PartNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QuantityPrint = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QuantityScan = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QuantityOK = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QuantityNG = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemButtonEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.pnControl = new DevExpress.XtraEditors.PanelControl();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDuLieu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.viewDuLieu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnControl)).BeginInit();
            this.pnControl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnExcel
            // 
            this.btnExcel.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.btnExcel.Appearance.Options.UseFont = true;
            this.btnExcel.Location = new System.Drawing.Point(5, 5);
            this.btnExcel.Name = "btnExcel";
            this.btnExcel.Size = new System.Drawing.Size(80, 40);
            this.btnExcel.TabIndex = 0;
            this.btnExcel.Text = "Excel (F4)";
            this.btnExcel.Click += new System.EventHandler(this.btnExcel_Click);
            // 
            // btnRefresh
            // 
            this.btnRefresh.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(150)))), ((int)(((byte)(250)))));
            this.btnRefresh.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.btnRefresh.Appearance.Options.UseBackColor = true;
            this.btnRefresh.Appearance.Options.UseFont = true;
            this.btnRefresh.Location = new System.Drawing.Point(91, 5);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(80, 40);
            this.btnRefresh.TabIndex = 1;
            this.btnRefresh.Text = "Lọc (F5)";
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // btnClose
            // 
            this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnClose.Appearance.BackColor = System.Drawing.Color.Red;
            this.btnClose.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.btnClose.Appearance.Options.UseBackColor = true;
            this.btnClose.Appearance.Options.UseFont = true;
            this.btnClose.Location = new System.Drawing.Point(1198, 5);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(80, 40);
            this.btnClose.TabIndex = 3;
            this.btnClose.Text = "Đóng (ESC)";
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // dgvDuLieu
            // 
            this.dgvDuLieu.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDuLieu.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(2);
            this.dgvDuLieu.Location = new System.Drawing.Point(0, 50);
            this.dgvDuLieu.MainView = this.viewDuLieu;
            this.dgvDuLieu.Margin = new System.Windows.Forms.Padding(2);
            this.dgvDuLieu.Name = "dgvDuLieu";
            this.dgvDuLieu.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1,
            this.repositoryItemButtonEdit1,
            this.repositoryItemMemoEdit1});
            this.dgvDuLieu.Size = new System.Drawing.Size(1290, 418);
            this.dgvDuLieu.TabIndex = 1;
            this.dgvDuLieu.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.viewDuLieu});
            // 
            // viewDuLieu
            // 
            this.viewDuLieu.Appearance.FocusedCell.BackColor = System.Drawing.Color.SkyBlue;
            this.viewDuLieu.Appearance.FocusedCell.ForeColor = System.Drawing.Color.Black;
            this.viewDuLieu.Appearance.FocusedCell.Options.UseBackColor = true;
            this.viewDuLieu.Appearance.FocusedCell.Options.UseForeColor = true;
            this.viewDuLieu.ColumnPanelRowHeight = 45;
            this.viewDuLieu.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.RegistDate,
            this.PartNo,
            this.QuantityPrint,
            this.QuantityScan,
            this.QuantityOK,
            this.QuantityNG});
            this.viewDuLieu.DetailHeight = 284;
            this.viewDuLieu.GridControl = this.dgvDuLieu;
            this.viewDuLieu.IndicatorWidth = 40;
            this.viewDuLieu.Name = "viewDuLieu";
            this.viewDuLieu.OptionsBehavior.Editable = false;
            this.viewDuLieu.OptionsCustomization.AllowQuickHideColumns = false;
            this.viewDuLieu.OptionsSelection.EnableAppearanceFocusedRow = false;
            this.viewDuLieu.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.viewDuLieu.OptionsView.ShowAutoFilterRow = true;
            this.viewDuLieu.OptionsView.ShowFooter = true;
            this.viewDuLieu.OptionsView.ShowGroupPanel = false;
            this.viewDuLieu.RowHeight = 40;
            this.viewDuLieu.CustomDrawRowIndicator += new DevExpress.XtraGrid.Views.Grid.RowIndicatorCustomDrawEventHandler(this.viewDuLieu_CustomDrawRowIndicator);
            this.viewDuLieu.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.viewDuLieu_RowCellStyle);
            this.viewDuLieu.KeyDown += new System.Windows.Forms.KeyEventHandler(this.viewDuLieu_KeyDown);
            // 
            // RegistDate
            // 
            this.RegistDate.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.RegistDate.AppearanceCell.Options.UseFont = true;
            this.RegistDate.AppearanceCell.Options.UseTextOptions = true;
            this.RegistDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.RegistDate.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.RegistDate.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.RegistDate.AppearanceHeader.Options.UseFont = true;
            this.RegistDate.AppearanceHeader.Options.UseTextOptions = true;
            this.RegistDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.RegistDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.RegistDate.Caption = "Ngày";
            this.RegistDate.ColumnEdit = this.repositoryItemMemoEdit1;
            this.RegistDate.DisplayFormat.FormatString = "dd/MM/yyyy";
            this.RegistDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.RegistDate.FieldName = "RegistDate";
            this.RegistDate.MaxWidth = 100;
            this.RegistDate.MinWidth = 100;
            this.RegistDate.Name = "RegistDate";
            this.RegistDate.Visible = true;
            this.RegistDate.VisibleIndex = 0;
            this.RegistDate.Width = 100;
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // PartNo
            // 
            this.PartNo.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.PartNo.AppearanceCell.Options.UseFont = true;
            this.PartNo.AppearanceCell.Options.UseTextOptions = true;
            this.PartNo.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.PartNo.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.PartNo.AppearanceHeader.Options.UseFont = true;
            this.PartNo.AppearanceHeader.Options.UseTextOptions = true;
            this.PartNo.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.PartNo.Caption = "PartNumber";
            this.PartNo.ColumnEdit = this.repositoryItemMemoEdit1;
            this.PartNo.FieldName = "PartNo";
            this.PartNo.Name = "PartNo";
            this.PartNo.Visible = true;
            this.PartNo.VisibleIndex = 1;
            this.PartNo.Width = 548;
            // 
            // QuantityPrint
            // 
            this.QuantityPrint.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.QuantityPrint.AppearanceCell.Options.UseFont = true;
            this.QuantityPrint.AppearanceCell.Options.UseTextOptions = true;
            this.QuantityPrint.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QuantityPrint.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.QuantityPrint.AppearanceHeader.Options.UseFont = true;
            this.QuantityPrint.AppearanceHeader.Options.UseTextOptions = true;
            this.QuantityPrint.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QuantityPrint.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.QuantityPrint.Caption = "Số lượng mã vạch đã in";
            this.QuantityPrint.FieldName = "QuantityPrint";
            this.QuantityPrint.MaxWidth = 100;
            this.QuantityPrint.MinWidth = 100;
            this.QuantityPrint.Name = "QuantityPrint";
            this.QuantityPrint.Summary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridColumnSummaryItem(DevExpress.Data.SummaryItemType.Sum, "QuantityPrint", "{0:0.##}")});
            this.QuantityPrint.Visible = true;
            this.QuantityPrint.VisibleIndex = 2;
            this.QuantityPrint.Width = 100;
            // 
            // QuantityScan
            // 
            this.QuantityScan.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.QuantityScan.AppearanceCell.Options.UseFont = true;
            this.QuantityScan.AppearanceCell.Options.UseTextOptions = true;
            this.QuantityScan.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QuantityScan.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.QuantityScan.AppearanceHeader.Options.UseFont = true;
            this.QuantityScan.AppearanceHeader.Options.UseTextOptions = true;
            this.QuantityScan.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QuantityScan.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.QuantityScan.Caption = "SL sản phẩm đã sản xuất";
            this.QuantityScan.FieldName = "QuantityScan";
            this.QuantityScan.MaxWidth = 100;
            this.QuantityScan.MinWidth = 100;
            this.QuantityScan.Name = "QuantityScan";
            this.QuantityScan.Summary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridColumnSummaryItem(DevExpress.Data.SummaryItemType.Sum, "QuantityScan", "{0:0.##}")});
            this.QuantityScan.Visible = true;
            this.QuantityScan.VisibleIndex = 3;
            this.QuantityScan.Width = 100;
            // 
            // QuantityOK
            // 
            this.QuantityOK.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.QuantityOK.AppearanceCell.Options.UseFont = true;
            this.QuantityOK.AppearanceCell.Options.UseTextOptions = true;
            this.QuantityOK.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QuantityOK.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.QuantityOK.AppearanceHeader.Options.UseFont = true;
            this.QuantityOK.AppearanceHeader.Options.UseTextOptions = true;
            this.QuantityOK.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QuantityOK.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.QuantityOK.Caption = "Số lượng sản phẩm OK";
            this.QuantityOK.FieldName = "QuantityOK";
            this.QuantityOK.MaxWidth = 100;
            this.QuantityOK.MinWidth = 100;
            this.QuantityOK.Name = "QuantityOK";
            this.QuantityOK.Summary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridColumnSummaryItem(DevExpress.Data.SummaryItemType.Sum, "QuantityOK", "{0:0.##}")});
            this.QuantityOK.Visible = true;
            this.QuantityOK.VisibleIndex = 4;
            this.QuantityOK.Width = 100;
            // 
            // QuantityNG
            // 
            this.QuantityNG.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.QuantityNG.AppearanceCell.Options.UseFont = true;
            this.QuantityNG.AppearanceCell.Options.UseTextOptions = true;
            this.QuantityNG.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QuantityNG.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.QuantityNG.AppearanceHeader.Options.UseFont = true;
            this.QuantityNG.AppearanceHeader.Options.UseTextOptions = true;
            this.QuantityNG.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QuantityNG.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.QuantityNG.Caption = "Số lượng sản phẩm NG";
            this.QuantityNG.FieldName = "QuantityNG";
            this.QuantityNG.MaxWidth = 100;
            this.QuantityNG.MinWidth = 100;
            this.QuantityNG.Name = "QuantityNG";
            this.QuantityNG.Summary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridColumnSummaryItem(DevExpress.Data.SummaryItemType.Sum, "QuantityNG", "{0:0.##}")});
            this.QuantityNG.Visible = true;
            this.QuantityNG.VisibleIndex = 5;
            this.QuantityNG.Width = 100;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.ValueChecked = 1;
            this.repositoryItemCheckEdit1.ValueUnchecked = 0;
            // 
            // repositoryItemButtonEdit1
            // 
            this.repositoryItemButtonEdit1.AutoHeight = false;
            this.repositoryItemButtonEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit1.ButtonsStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.repositoryItemButtonEdit1.Name = "repositoryItemButtonEdit1";
            // 
            // pnControl
            // 
            this.pnControl.Controls.Add(this.panelControl2);
            this.pnControl.Controls.Add(this.btnExcel);
            this.pnControl.Controls.Add(this.btnRefresh);
            this.pnControl.Controls.Add(this.btnClose);
            this.pnControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnControl.Location = new System.Drawing.Point(0, 0);
            this.pnControl.Name = "pnControl";
            this.pnControl.Size = new System.Drawing.Size(1290, 50);
            this.pnControl.TabIndex = 0;
            // 
            // panelControl2
            // 
            this.panelControl2.Controls.Add(this.dtpToDate);
            this.panelControl2.Controls.Add(this.labelControl1);
            this.panelControl2.Controls.Add(this.dtpFromDate);
            this.panelControl2.Controls.Add(this.labelControl3);
            this.panelControl2.Location = new System.Drawing.Point(177, 5);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(380, 40);
            this.panelControl2.TabIndex = 2;
            // 
            // dtpToDate
            // 
            this.dtpToDate.CustomFormat = "dd/MM/yyyy";
            this.dtpToDate.Font = new System.Drawing.Font("Segoe UI", 11F);
            this.dtpToDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpToDate.Location = new System.Drawing.Point(258, 7);
            this.dtpToDate.Name = "dtpToDate";
            this.dtpToDate.Size = new System.Drawing.Size(115, 27);
            this.dtpToDate.TabIndex = 1;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(193, 11);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(59, 19);
            this.labelControl1.TabIndex = 6;
            this.labelControl1.Text = "Đến ngày";
            // 
            // dtpFromDate
            // 
            this.dtpFromDate.CustomFormat = "dd/MM/yyyy";
            this.dtpFromDate.Font = new System.Drawing.Font("Segoe UI", 11F);
            this.dtpFromDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpFromDate.Location = new System.Drawing.Point(72, 7);
            this.dtpFromDate.Name = "dtpFromDate";
            this.dtpFromDate.Size = new System.Drawing.Size(115, 27);
            this.dtpFromDate.TabIndex = 0;
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.labelControl3.Appearance.Options.UseFont = true;
            this.labelControl3.Location = new System.Drawing.Point(5, 12);
            this.labelControl3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(49, 19);
            this.labelControl3.TabIndex = 4;
            this.labelControl3.Text = "Từ ngày";
            // 
            // frmReportSyntheticRegistBarcode
            // 
            this.Appearance.Options.UseFont = true;
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.ClientSize = new System.Drawing.Size(1290, 468);
            this.Controls.Add(this.dgvDuLieu);
            this.Controls.Add(this.pnControl);
            this.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmReportSyntheticRegistBarcode";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Báo cáo tổng hợp theo mã vạch";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmReportSyntheticRegistBarcode_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDuLieu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.viewDuLieu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnControl)).EndInit();
            this.pnControl.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            this.panelControl2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private DevExpress.XtraEditors.SimpleButton btnExcel;
        private DevExpress.XtraEditors.SimpleButton btnRefresh;
        private DevExpress.XtraEditors.SimpleButton btnClose;
        private DevExpress.XtraGrid.GridControl dgvDuLieu;
        private DevExpress.XtraGrid.Views.Grid.GridView viewDuLieu;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn RegistDate;
        private DevExpress.XtraGrid.Columns.GridColumn PartNo;
        private DevExpress.XtraEditors.PanelControl pnControl;
        private DevExpress.XtraGrid.Columns.GridColumn QuantityPrint;
        private DevExpress.XtraGrid.Columns.GridColumn QuantityScan;
        private DevExpress.XtraGrid.Columns.GridColumn QuantityOK;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraGrid.Columns.GridColumn QuantityNG;
    }
}