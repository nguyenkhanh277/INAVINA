namespace Inavina.View.RegistBarcodes
{
    partial class rptBarcode
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

        #region Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraPrinting.BarCode.DataMatrixGenerator dataMatrixGenerator1 = new DevExpress.XtraPrinting.BarCode.DataMatrixGenerator();
            this.TopMargin = new DevExpress.XtraReports.UI.TopMarginBand();
            this.xrLabel28 = new DevExpress.XtraReports.UI.XRLabel();
            this.txtCodeMemo = new DevExpress.XtraReports.UI.XRBarCode();
            this.BottomMargin = new DevExpress.XtraReports.UI.BottomMarginBand();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.Barcode = new DevExpress.XtraReports.Parameters.Parameter();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // TopMargin
            // 
            this.TopMargin.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel28,
            this.txtCodeMemo});
            this.TopMargin.HeightF = 200F;
            this.TopMargin.Name = "TopMargin";
            // 
            // xrLabel28
            // 
            this.xrLabel28.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrLabel28.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "?Barcode")});
            this.xrLabel28.Font = new System.Drawing.Font("Arial", 10F);
            this.xrLabel28.LocationFloat = new DevExpress.Utils.PointFloat(20.00003F, 110F);
            this.xrLabel28.Multiline = true;
            this.xrLabel28.Name = "xrLabel28";
            this.xrLabel28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel28.SizeF = new System.Drawing.SizeF(275F, 49.99999F);
            this.xrLabel28.StylePriority.UseBorders = false;
            this.xrLabel28.StylePriority.UseFont = false;
            this.xrLabel28.StylePriority.UseTextAlignment = false;
            this.xrLabel28.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // txtCodeMemo
            // 
            this.txtCodeMemo.Alignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.txtCodeMemo.AutoModule = true;
            this.txtCodeMemo.BorderColor = System.Drawing.Color.Transparent;
            this.txtCodeMemo.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.txtCodeMemo.Font = new System.Drawing.Font("Arial", 20F, System.Drawing.FontStyle.Bold);
            this.txtCodeMemo.ForeColor = System.Drawing.Color.Black;
            this.txtCodeMemo.LocationFloat = new DevExpress.Utils.PointFloat(20.00003F, 20F);
            this.txtCodeMemo.Module = 3F;
            this.txtCodeMemo.Name = "txtCodeMemo";
            this.txtCodeMemo.Padding = new DevExpress.XtraPrinting.PaddingInfo(10, 10, 0, 0, 100F);
            this.txtCodeMemo.ShowText = false;
            this.txtCodeMemo.SizeF = new System.Drawing.SizeF(275F, 90.00003F);
            this.txtCodeMemo.StylePriority.UseBorderColor = false;
            this.txtCodeMemo.StylePriority.UseBorders = false;
            this.txtCodeMemo.StylePriority.UseFont = false;
            this.txtCodeMemo.StylePriority.UseForeColor = false;
            this.txtCodeMemo.StylePriority.UsePadding = false;
            this.txtCodeMemo.StylePriority.UseTextAlignment = false;
            dataMatrixGenerator1.CompactionMode = DevExpress.XtraPrinting.BarCode.DataMatrixCompactionMode.X12;
            this.txtCodeMemo.Symbology = dataMatrixGenerator1;
            this.txtCodeMemo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // BottomMargin
            // 
            this.BottomMargin.HeightF = 0F;
            this.BottomMargin.Name = "BottomMargin";
            // 
            // Detail
            // 
            this.Detail.HeightF = 0F;
            this.Detail.Name = "Detail";
            // 
            // Barcode
            // 
            this.Barcode.AllowNull = true;
            this.Barcode.Description = "Barcode";
            this.Barcode.Name = "Barcode";
            // 
            // rptBarcode
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.TopMargin,
            this.BottomMargin,
            this.Detail});
            this.Font = new System.Drawing.Font("Arial", 10F);
            this.Margins = new System.Drawing.Printing.Margins(0, 1, 200, 0);
            this.PageHeight = 340;
            this.PageWidth = 340;
            this.PaperKind = System.Drawing.Printing.PaperKind.Custom;
            this.Parameters.AddRange(new DevExpress.XtraReports.Parameters.Parameter[] {
            this.Barcode});
            this.RequestParameters = false;
            this.ShowPrintMarginsWarning = false;
            this.ShowPrintStatusDialog = false;
            this.Version = "19.1";
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.TopMarginBand TopMargin;
        private DevExpress.XtraReports.UI.BottomMarginBand BottomMargin;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        public DevExpress.XtraReports.UI.XRBarCode txtCodeMemo;
        private DevExpress.XtraReports.UI.XRLabel xrLabel28;
        private DevExpress.XtraReports.Parameters.Parameter Barcode;
    }
}