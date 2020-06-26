namespace Inavina.View.ScanBarcodes
{
    partial class frmProductionHistory
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
            this.Id = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.PartNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ScanDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ShiftNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.MachineNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Barcode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.UserID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ResultStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Status = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemButtonEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.pnControl = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
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
            this.btnExcel.Location = new System.Drawing.Point(91, 5);
            this.btnExcel.Name = "btnExcel";
            this.btnExcel.Size = new System.Drawing.Size(80, 40);
            this.btnExcel.TabIndex = 1;
            this.btnExcel.Text = "Excel (F4)";
            this.btnExcel.Click += new System.EventHandler(this.btnExcel_Click);
            // 
            // btnRefresh
            // 
            this.btnRefresh.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(150)))), ((int)(((byte)(250)))));
            this.btnRefresh.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.btnRefresh.Appearance.Options.UseBackColor = true;
            this.btnRefresh.Appearance.Options.UseFont = true;
            this.btnRefresh.Location = new System.Drawing.Point(177, 5);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(80, 40);
            this.btnRefresh.TabIndex = 2;
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
            this.btnClose.TabIndex = 4;
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
            this.Id,
            this.PartNo,
            this.ScanDate,
            this.ShiftNo,
            this.MachineNo,
            this.Barcode,
            this.UserID,
            this.ResultStatus,
            this.Status});
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
            // Id
            // 
            this.Id.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 9F);
            this.Id.AppearanceCell.Options.UseFont = true;
            this.Id.AppearanceCell.Options.UseTextOptions = true;
            this.Id.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.Id.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Id.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.Id.AppearanceHeader.Options.UseFont = true;
            this.Id.AppearanceHeader.Options.UseTextOptions = true;
            this.Id.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Id.Caption = "Id";
            this.Id.ColumnEdit = this.repositoryItemMemoEdit1;
            this.Id.FieldName = "Id";
            this.Id.Name = "Id";
            this.Id.Width = 100;
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
            this.PartNo.MaxWidth = 100;
            this.PartNo.MinWidth = 100;
            this.PartNo.Name = "PartNo";
            this.PartNo.Visible = true;
            this.PartNo.VisibleIndex = 0;
            this.PartNo.Width = 100;
            // 
            // ScanDate
            // 
            this.ScanDate.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.ScanDate.AppearanceCell.Options.UseFont = true;
            this.ScanDate.AppearanceCell.Options.UseTextOptions = true;
            this.ScanDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ScanDate.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.ScanDate.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.ScanDate.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.ScanDate.AppearanceHeader.Options.UseFont = true;
            this.ScanDate.AppearanceHeader.Options.UseTextOptions = true;
            this.ScanDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ScanDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.ScanDate.Caption = "Ngày sản xuất";
            this.ScanDate.ColumnEdit = this.repositoryItemMemoEdit1;
            this.ScanDate.DisplayFormat.FormatString = "dd/MM/yyyy HH:mm:ss";
            this.ScanDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.ScanDate.FieldName = "ScanDate";
            this.ScanDate.MaxWidth = 100;
            this.ScanDate.MinWidth = 100;
            this.ScanDate.Name = "ScanDate";
            this.ScanDate.Visible = true;
            this.ScanDate.VisibleIndex = 1;
            this.ScanDate.Width = 100;
            // 
            // ShiftNo
            // 
            this.ShiftNo.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.ShiftNo.AppearanceCell.Options.UseFont = true;
            this.ShiftNo.AppearanceCell.Options.UseTextOptions = true;
            this.ShiftNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ShiftNo.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.ShiftNo.AppearanceHeader.Options.UseFont = true;
            this.ShiftNo.AppearanceHeader.Options.UseTextOptions = true;
            this.ShiftNo.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ShiftNo.Caption = "Mã ca";
            this.ShiftNo.FieldName = "ShiftNo";
            this.ShiftNo.MaxWidth = 100;
            this.ShiftNo.MinWidth = 100;
            this.ShiftNo.Name = "ShiftNo";
            this.ShiftNo.Visible = true;
            this.ShiftNo.VisibleIndex = 2;
            this.ShiftNo.Width = 100;
            // 
            // MachineNo
            // 
            this.MachineNo.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.MachineNo.AppearanceCell.Options.UseFont = true;
            this.MachineNo.AppearanceCell.Options.UseTextOptions = true;
            this.MachineNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.MachineNo.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.MachineNo.AppearanceHeader.Options.UseFont = true;
            this.MachineNo.AppearanceHeader.Options.UseTextOptions = true;
            this.MachineNo.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.MachineNo.Caption = "Mã máy";
            this.MachineNo.FieldName = "MachineNo";
            this.MachineNo.MaxWidth = 100;
            this.MachineNo.MinWidth = 100;
            this.MachineNo.Name = "MachineNo";
            this.MachineNo.Visible = true;
            this.MachineNo.VisibleIndex = 3;
            this.MachineNo.Width = 100;
            // 
            // Barcode
            // 
            this.Barcode.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.Barcode.AppearanceCell.Options.UseFont = true;
            this.Barcode.AppearanceCell.Options.UseTextOptions = true;
            this.Barcode.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.Barcode.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.Barcode.AppearanceHeader.Options.UseFont = true;
            this.Barcode.AppearanceHeader.Options.UseTextOptions = true;
            this.Barcode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Barcode.Caption = "Mã vạch";
            this.Barcode.ColumnEdit = this.repositoryItemMemoEdit1;
            this.Barcode.FieldName = "Barcode";
            this.Barcode.Name = "Barcode";
            this.Barcode.Visible = true;
            this.Barcode.VisibleIndex = 4;
            this.Barcode.Width = 673;
            // 
            // UserID
            // 
            this.UserID.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.UserID.AppearanceCell.Options.UseFont = true;
            this.UserID.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.UserID.AppearanceHeader.Options.UseFont = true;
            this.UserID.AppearanceHeader.Options.UseTextOptions = true;
            this.UserID.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.UserID.Caption = "Người lập";
            this.UserID.FieldName = "UserID";
            this.UserID.MaxWidth = 150;
            this.UserID.MinWidth = 150;
            this.UserID.Name = "UserID";
            this.UserID.Width = 150;
            // 
            // ResultStatus
            // 
            this.ResultStatus.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.ResultStatus.AppearanceCell.Options.UseFont = true;
            this.ResultStatus.AppearanceCell.Options.UseTextOptions = true;
            this.ResultStatus.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ResultStatus.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.ResultStatus.AppearanceHeader.Options.UseFont = true;
            this.ResultStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.ResultStatus.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ResultStatus.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.ResultStatus.Caption = "Kết quả sản xuất";
            this.ResultStatus.FieldName = "ResultStatus";
            this.ResultStatus.MaxWidth = 80;
            this.ResultStatus.MinWidth = 80;
            this.ResultStatus.Name = "ResultStatus";
            this.ResultStatus.Summary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridColumnSummaryItem(DevExpress.Data.SummaryItemType.Count, "ResultStatus", "{0}")});
            this.ResultStatus.Visible = true;
            this.ResultStatus.VisibleIndex = 5;
            this.ResultStatus.Width = 80;
            // 
            // Status
            // 
            this.Status.AppearanceCell.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.Status.AppearanceCell.Options.UseFont = true;
            this.Status.AppearanceCell.Options.UseTextOptions = true;
            this.Status.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Status.AppearanceHeader.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            this.Status.AppearanceHeader.Options.UseFont = true;
            this.Status.AppearanceHeader.Options.UseTextOptions = true;
            this.Status.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Status.Caption = "Trạng thái";
            this.Status.FieldName = "Status";
            this.Status.MaxWidth = 75;
            this.Status.MinWidth = 75;
            this.Status.Name = "Status";
            this.Status.Visible = true;
            this.Status.VisibleIndex = 6;
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
            this.pnControl.Controls.Add(this.btnCancel);
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
            // btnCancel
            // 
            this.btnCancel.Appearance.BackColor = System.Drawing.Color.Red;
            this.btnCancel.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.btnCancel.Appearance.Options.UseBackColor = true;
            this.btnCancel.Appearance.Options.UseFont = true;
            this.btnCancel.Location = new System.Drawing.Point(5, 5);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(80, 40);
            this.btnCancel.TabIndex = 0;
            this.btnCancel.Text = "Hủy (F3)";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // panelControl2
            // 
            this.panelControl2.Controls.Add(this.dtpToDate);
            this.panelControl2.Controls.Add(this.labelControl1);
            this.panelControl2.Controls.Add(this.dtpFromDate);
            this.panelControl2.Controls.Add(this.labelControl3);
            this.panelControl2.Location = new System.Drawing.Point(263, 5);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(380, 40);
            this.panelControl2.TabIndex = 3;
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
            // frmProductionHistory
            // 
            this.Appearance.Options.UseFont = true;
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.ClientSize = new System.Drawing.Size(1290, 468);
            this.Controls.Add(this.dgvDuLieu);
            this.Controls.Add(this.pnControl);
            this.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmProductionHistory";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Lịch sử sản xuất";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmProductionHistory_Load);
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
        private DevExpress.XtraGrid.Columns.GridColumn Id;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn Barcode;
        private DevExpress.XtraGrid.Columns.GridColumn ScanDate;
        private DevExpress.XtraGrid.Columns.GridColumn PartNo;
        private DevExpress.XtraEditors.PanelControl pnControl;
        private DevExpress.XtraGrid.Columns.GridColumn ShiftNo;
        private DevExpress.XtraGrid.Columns.GridColumn MachineNo;
        private DevExpress.XtraGrid.Columns.GridColumn ResultStatus;
        private DevExpress.XtraGrid.Columns.GridColumn UserID;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraGrid.Columns.GridColumn Status;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
    }
}