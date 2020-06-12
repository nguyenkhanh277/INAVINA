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
                var registBarcodes = Find(_ => _.RegistDate.Year.Equals(dateTime.Year) && _.RegistDate.Month.Equals(dateTime.Month) && _.RegistDate.Day.Equals(dateTime.Day) && _.ShiftNo.Equals(shiftNo));
                if (registBarcodes != null)
                {
                    result = registBarcodes.Max(_ => _.SEQ);
                    result = (result == null ? "0" : result);
                }
            }
            catch { }
            return result;
        }

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

        public List<ReportSyntheticRegistBarcode> GetReportSyntheticRegistBarcode(DateTime fromDate, DateTime toDate)
        {
            var query = from x in ProjectDataContext.RegistBarcodes
                        join y in ProjectDataContext.ScanBarcodes on x.Barcode equals y.Barcode into z
                        from result in z.DefaultIfEmpty()
                        where x.RegistDate >= fromDate && x.RegistDate <= toDate
                        group result by new
                        {
                            x.RegistDate,
                            x.PartNo
                        } into g

                        select new
                        {
                            Year = g.Key.RegistDate.Year,
                            Month = g.Key.RegistDate.Month,
                            Day = g.Key.RegistDate.Day,
                            PartNo = g.Key.PartNo,
                            QuantityPrint = g.Count(),
                            QuantityScan = g.Sum(_ => (!String.IsNullOrEmpty(_.PartNo) ? 1 : 0)),
                            QuantityOK = g.Sum(_ => (!String.IsNullOrEmpty(_.PartNo) && _.ResultStatus == GlobalConstants.ResultStatusValue.OK ? 1 : 0)),
                            QuantityNG = g.Sum(_ => (!String.IsNullOrEmpty(_.PartNo) && _.ResultStatus == GlobalConstants.ResultStatusValue.Duplicate ? 1 : 0))
                        };

            var scanBarcodesNG = from x in ProjectDataContext.ScanBarcodes
                               where x.ScanDate >= fromDate && x.ScanDate <= toDate &&
                                   (x.ResultStatus == GlobalConstants.ResultStatusValue.NotFound || x.ResultStatus == GlobalConstants.ResultStatusValue.NG)
                               group x by new
                               {
                                   x.ScanDate.Year,
                                   x.ScanDate.Month,
                                   x.ScanDate.Day
                               } into g

                               select new
                               {
                                   Year = g.Key.Year,
                                   Month = g.Key.Month,
                                   Day = g.Key.Day,
                                   PartNo = "Mã vạch bị NOT FOUND + NG",
                                   QuantityPrint = 0,
                                   QuantityScan = g.Count(),
                                   QuantityOK = 0,
                                   QuantityNG = g.Count()
                               };

            List<ReportSyntheticRegistBarcode> reportSyntheticViews = new List<ReportSyntheticRegistBarcode>();
            ReportSyntheticRegistBarcode reportSyntheticView;
            if (query.Any())
            {
                foreach (var item in query)
                {
                    reportSyntheticView = new ReportSyntheticRegistBarcode();
                    reportSyntheticView.RegistDate = new DateTime(item.Year, item.Month, item.Day);
                    reportSyntheticView.PartNo = item.PartNo;
                    reportSyntheticView.QuantityPrint = item.QuantityPrint;
                    reportSyntheticView.QuantityScan = item.QuantityScan;
                    reportSyntheticView.QuantityOK = item.QuantityOK;
                    reportSyntheticView.QuantityNG = item.QuantityNG;
                    reportSyntheticViews.Add(reportSyntheticView);
                }
            }
            if (scanBarcodesNG.Any())
            {
                foreach (var item in scanBarcodesNG)
                {
                    reportSyntheticView = new ReportSyntheticRegistBarcode();
                    reportSyntheticView.RegistDate = new DateTime(item.Year, item.Month, item.Day);
                    reportSyntheticView.PartNo = item.PartNo;
                    reportSyntheticView.QuantityPrint = item.QuantityPrint;
                    reportSyntheticView.QuantityScan = item.QuantityScan;
                    reportSyntheticView.QuantityOK = item.QuantityOK;
                    reportSyntheticView.QuantityNG = item.QuantityNG;
                    reportSyntheticViews.Add(reportSyntheticView);
                }
            }
            return reportSyntheticViews;
        }

        public RegistBarcode CheckIsExist(string barcode)
        {
            return FirstOrDefault(_ => _.Barcode.Trim() == barcode && _.Status == GlobalConstants.StatusValue.Using);
        }

    }
}