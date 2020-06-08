using Inavina.Core.Domain;
using Inavina.Core.Repositories;
using System.Collections.Generic;
using System.Linq;
using System;
using Inavina.Core;
using Inavina.Core.Helper;
using System.Linq.Expressions;
using System.Drawing.Printing;
using System.Data;

namespace Inavina.Persistence.Repositories
{
    public class RegistBarcodeRepository : Repository<RegistBarcode>
    {
        public string id = "";

        public RegistBarcodeRepository(ProjectDataContext projectDataContext) : base(projectDataContext)
        {
        }

        public ProjectDataContext ProjectDataContext
        {
            get { return Context as ProjectDataContext; }
        }

        public void Save(RegistBarcode registBarcode)
        {
            if (String.IsNullOrEmpty(registBarcode.Id))
            {
                registBarcode.Id = GetAutoID();
                registBarcode.UserID = GlobalConstants.userID;
                registBarcode.CreatedAt = DateTime.Now;
                registBarcode.CreatedBy = GlobalConstants.username;
                Add(registBarcode);
                id = registBarcode.Id;
            }
            else
            {
                Update(registBarcode);
            }
        }

        public void Update(RegistBarcode registBarcode)
        {
            error = false;
            errorMessage = "";
            try
            {
                var raw = FirstOrDefault(_ => _.Id.Equals(registBarcode.Id));
                if (raw != null)
                {
                    raw.CollectInformation(registBarcode);
                    raw.EditedAt = DateTime.Now;
                    raw.EditedBy = GlobalConstants.username;
                    id = raw.Id;
                }
            }
            catch (Exception ex)
            {
                error = true;
                errorMessage = ex.ToString();
            }
        }

        public void Cancel(string id)
        {
            error = false;
            errorMessage = "";
            try
            {
                var registBarcode = FirstOrDefault(_ => _.Id.Equals(id));
                if (registBarcode != null)
                {
                    registBarcode.Status = GlobalConstants.StatusValue.NoUse;
                    registBarcode.EditedAt = DateTime.Now;
                    registBarcode.EditedBy = GlobalConstants.username;
                }
            }
            catch (Exception ex)
            {
                error = true;
                errorMessage = ex.ToString();
            }
        }

        public string GetAutoID()
        {
            return Guid.NewGuid().ToString();
        }

        public string GetSEQ(DateTime dateTime, string shiftNo)
        {
            string result = "0";
            try
            {
                DateTime fromDate = DateTime.Parse(dateTime.ToString("yyyy-MM-dd 00:00:00"));
                DateTime toDate = DateTime.Parse(dateTime.ToString("yyyy-MM-dd 23:59:59"));
                var registBarcode = Find(_ => _.RegistDate >= fromDate && _.RegistDate <= toDate && _.ShiftNo.Equals(shiftNo));
                if (registBarcode != null)
                {
                    result = registBarcode.OrderByDescending(_ => _.SEQ).Select(_ => _.SEQ).FirstOrDefault();
                    result = (result == null ? "0" : result);
                }
            }
            catch { }
            return result;
        }

        //public void PrintBarcode(string barcode)
        //{
        //    try
        //    {
        //        View.RegistBarcodes.rptListBarcode _report = new View.RegistBarcodes.rptListBarcode();
        //        _report.txtBarcode.Text = barcode;
        //        _report.Parameters["Barcode"].Value = barcode;
        //        //if (GeneralHelper.ValidPrinter(GlobalConstants.printerName))
        //        //{
        //        //    _report.PrinterName = GlobalConstants.printerName;
        //        //    DevExpress.XtraReports.UI.ReportPrintTool rpt = new DevExpress.XtraReports.UI.ReportPrintTool(_report);
        //        //    rpt.AutoShowParametersPanel = false;
        //        //    rpt.Print();
        //        //}
        //        //else
        //        {
        //            DevExpress.XtraReports.UI.ReportPrintTool rpt = new DevExpress.XtraReports.UI.ReportPrintTool(_report);
        //            rpt.AutoShowParametersPanel = false;
        //            rpt.ShowPreview();
        //        }
        //    }
        //    catch { }
        //}

        public void PrintListBarcode(DataTable listBarcode)
        {
            try
            {
                View.RegistBarcodes.rptListBarcode _report = new View.RegistBarcodes.rptListBarcode();
                _report.DataSource = listBarcode;
                //if (GeneralHelper.ValidPrinter(GlobalConstants.printerName))
                //{
                //    _report.PrinterName = GlobalConstants.printerName;
                //    DevExpress.XtraReports.UI.ReportPrintTool rpt = new DevExpress.XtraReports.UI.ReportPrintTool(_report);
                //    rpt.AutoShowParametersPanel = false;
                //    rpt.Print();
                //}
                //else
                {
                    DevExpress.XtraReports.UI.ReportPrintTool rpt = new DevExpress.XtraReports.UI.ReportPrintTool(_report);
                    rpt.AutoShowParametersPanel = false;
                    rpt.ShowPreview();
                }
            }
            catch { }
        }
    }
}