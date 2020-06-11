namespace Inavina.View.ProductionPlans
{
    partial class frmProductionPlanAddEdit
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
            this.btnClose = new DevExpress.XtraEditors.SimpleButton();
            this.btnSave = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.dtpRegistDate = new System.Windows.Forms.DateTimePicker();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.cbbPartNumber = new System.Windows.Forms.ComboBox();
            this.btnAddPartNumber = new System.Windows.Forms.Button();
            this.txtWorkOrder = new DevExpress.XtraEditors.TextEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.txtQuantity = new DevExpress.XtraEditors.TextEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkOrder.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtQuantity.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnClose
            // 
            this.btnClose.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.btnClose.Appearance.Options.UseFont = true;
            this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnClose.Location = new System.Drawing.Point(265, 195);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(80, 40);
            this.btnClose.TabIndex = 5;
            this.btnClose.Text = "Đóng (ESC)";
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // btnSave
            // 
            this.btnSave.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(31)))), ((int)(((byte)(154)))), ((int)(((byte)(242)))));
            this.btnSave.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.btnSave.Appearance.Options.UseBackColor = true;
            this.btnSave.Appearance.Options.UseFont = true;
            this.btnSave.Location = new System.Drawing.Point(179, 195);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(80, 40);
            this.btnSave.TabIndex = 4;
            this.btnSave.Text = "Lưu (F1)";
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(45, 76);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(71, 17);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "PartNumber";
            // 
            // dtpRegistDate
            // 
            this.dtpRegistDate.CustomFormat = "dd/MM/yyyy";
            this.dtpRegistDate.Enabled = false;
            this.dtpRegistDate.Font = new System.Drawing.Font("Segoe UI", 11F);
            this.dtpRegistDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpRegistDate.Location = new System.Drawing.Point(45, 160);
            this.dtpRegistDate.Name = "dtpRegistDate";
            this.dtpRegistDate.Size = new System.Drawing.Size(134, 27);
            this.dtpRegistDate.TabIndex = 2;
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.labelControl3.Appearance.Options.UseFont = true;
            this.labelControl3.Location = new System.Drawing.Point(45, 135);
            this.labelControl3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(81, 17);
            this.labelControl3.TabIndex = 2;
            this.labelControl3.Text = "Ngày đăng ký";
            // 
            // cbbPartNumber
            // 
            this.cbbPartNumber.DisplayMember = "PartNo";
            this.cbbPartNumber.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbPartNumber.Font = new System.Drawing.Font("Segoe UI", 11F);
            this.cbbPartNumber.FormattingEnabled = true;
            this.cbbPartNumber.Location = new System.Drawing.Point(45, 100);
            this.cbbPartNumber.Name = "cbbPartNumber";
            this.cbbPartNumber.Size = new System.Drawing.Size(266, 28);
            this.cbbPartNumber.TabIndex = 1;
            this.cbbPartNumber.ValueMember = "Id";
            // 
            // btnAddPartNumber
            // 
            this.btnAddPartNumber.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnAddPartNumber.BackgroundImage = global::Inavina.Properties.Resources.Add;
            this.btnAddPartNumber.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnAddPartNumber.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAddPartNumber.Location = new System.Drawing.Point(317, 100);
            this.btnAddPartNumber.Name = "btnAddPartNumber";
            this.btnAddPartNumber.Size = new System.Drawing.Size(28, 28);
            this.btnAddPartNumber.TabIndex = 6;
            this.btnAddPartNumber.UseVisualStyleBackColor = false;
            this.btnAddPartNumber.Click += new System.EventHandler(this.btnAddPartNumber_Click);
            // 
            // txtWorkOrder
            // 
            this.txtWorkOrder.EditValue = "";
            this.txtWorkOrder.Location = new System.Drawing.Point(45, 38);
            this.txtWorkOrder.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtWorkOrder.Name = "txtWorkOrder";
            this.txtWorkOrder.Properties.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.txtWorkOrder.Properties.Appearance.Options.UseFont = true;
            this.txtWorkOrder.Properties.AppearanceFocused.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.txtWorkOrder.Properties.AppearanceFocused.Options.UseBackColor = true;
            this.txtWorkOrder.Properties.AutoHeight = false;
            this.txtWorkOrder.Size = new System.Drawing.Size(300, 30);
            this.txtWorkOrder.TabIndex = 0;
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.labelControl5.Appearance.Options.UseFont = true;
            this.labelControl5.Location = new System.Drawing.Point(45, 15);
            this.labelControl5.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(111, 19);
            this.labelControl5.TabIndex = 21;
            this.labelControl5.Text = "Kế hoạch sản xuất";
            // 
            // txtQuantity
            // 
            this.txtQuantity.EditValue = "0";
            this.txtQuantity.Location = new System.Drawing.Point(211, 158);
            this.txtQuantity.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtQuantity.Name = "txtQuantity";
            this.txtQuantity.Properties.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.txtQuantity.Properties.Appearance.Options.UseFont = true;
            this.txtQuantity.Properties.AppearanceFocused.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.txtQuantity.Properties.AppearanceFocused.Options.UseBackColor = true;
            this.txtQuantity.Properties.AutoHeight = false;
            this.txtQuantity.Size = new System.Drawing.Size(134, 30);
            this.txtQuantity.TabIndex = 3;
            this.txtQuantity.EditValueChanged += new System.EventHandler(this.txtQuantity_EditValueChanged);
            this.txtQuantity.Click += new System.EventHandler(this.txtQuantity_Click);
            // 
            // labelControl6
            // 
            this.labelControl6.Appearance.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.labelControl6.Appearance.Options.UseFont = true;
            this.labelControl6.Location = new System.Drawing.Point(211, 134);
            this.labelControl6.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(54, 19);
            this.labelControl6.TabIndex = 23;
            this.labelControl6.Text = "Số lượng";
            // 
            // frmProductionPlanAddEdit
            // 
            this.Appearance.Options.UseFont = true;
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.CancelButton = this.btnClose;
            this.ClientSize = new System.Drawing.Size(390, 248);
            this.Controls.Add(this.txtQuantity);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.txtWorkOrder);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.btnAddPartNumber);
            this.Controls.Add(this.cbbPartNumber);
            this.Controls.Add(this.dtpRegistDate);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.labelControl1);
            this.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmProductionPlanAddEdit";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Kế hoạch sản xuất";
            this.Load += new System.EventHandler(this.frmProductionPlanAddEdit_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkOrder.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtQuantity.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private DevExpress.XtraEditors.SimpleButton btnClose;
        private DevExpress.XtraEditors.SimpleButton btnSave;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.DateTimePicker dtpRegistDate;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private System.Windows.Forms.ComboBox cbbPartNumber;
        private System.Windows.Forms.Button btnAddPartNumber;
        private DevExpress.XtraEditors.TextEdit txtWorkOrder;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.TextEdit txtQuantity;
        private DevExpress.XtraEditors.LabelControl labelControl6;
    }
}