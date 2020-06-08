using Inavina.Core.Domain;
using Inavina.Core.Repositories;
using System.Collections.Generic;
using System.Linq;
using System;
using Inavina.Core;
using Inavina.Core.Helper;
using System.Linq.Expressions;
using System.Drawing.Printing;

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
            int result = 1;
            try
            {
                DateTime fromDate = DateTime.Parse(dateTime.ToString("yyyy-MM-dd 00:00:00"));
                DateTime toDate = DateTime.Parse(dateTime.ToString("yyyy-MM-dd 23:59:59"));
                var registBarcode = Find(_ => _.RegistDate >= fromDate && _.RegistDate <= toDate && _.ShiftNo.Equals(shiftNo));
                if (registBarcode != null)
                {
                    string seq = registBarcode.OrderByDescending(_ => _.SEQ).Select(_ => _.SEQ).FirstOrDefault();
                    result = (int.Parse(seq) + 1);
                }
            }
            catch (Exception ex)
            { }
            return result.ToString("0000");
        }

        public bool PrintBarcode(string barcode)
        {
            bool result = false;
            try
            {
                View.RegistBarcodes.rptBarcode _report = new View.RegistBarcodes.rptBarcode();
                _report.txtCodeMemo.Text = barcode;
                _report.Parameters["Barcode"].Value = barcode;
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
                result = true;
            }
            catch { }
            return result;
        }
    }
}