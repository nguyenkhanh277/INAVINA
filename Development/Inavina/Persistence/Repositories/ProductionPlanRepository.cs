using Inavina.Core.Domain;
using Inavina.Core.Repositories;
using System.Collections.Generic;
using System.Linq;
using System;
using Inavina.Core;
using Inavina.Core.Helper;
using System.Linq.Expressions;

namespace Inavina.Persistence.Repositories
{
    public class ProductionPlanRepository : Repository<ProductionPlan>
    {
        public string id = "";

        public ProductionPlanRepository(ProjectDataContext projectDataContext) : base(projectDataContext)
        {
        }

        public ProjectDataContext ProjectDataContext
        {
            get { return Context as ProjectDataContext; }
        }

        public void Save(ProductionPlan productionPlan)
        {
            if (String.IsNullOrEmpty(productionPlan.Id))
            {
                productionPlan.Id = GetAutoID();
                productionPlan.UserID = GlobalConstants.userID;
                productionPlan.CreatedAt = DateTime.Now;
                productionPlan.CreatedBy = GlobalConstants.username;
                Add(productionPlan);
                id = productionPlan.Id;
            }
            else
            {
                Update(productionPlan);
            }
        }

        public void Update(ProductionPlan productionPlan)
        {
            error = false;
            errorMessage = "";
            try
            {
                var raw = FirstOrDefault(_ => _.Id.Equals(productionPlan.Id));
                if (raw != null)
                {
                    raw.CollectInformation(productionPlan);
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
                var productionPlan = FirstOrDefault(_ => _.Id.Equals(id));
                if (productionPlan != null)
                {
                    productionPlan.Status = GlobalConstants.StatusValue.NoUse;
                    productionPlan.EditedAt = DateTime.Now;
                    productionPlan.EditedBy = GlobalConstants.username;
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

        public List<ReportSyntheticProductionPlan> GetReportSyntheticProductionPlan(DateTime fromDate, DateTime toDate)
        {
            var productionPlans = from x in ProjectDataContext.ProductionPlans
                                  where x.ExpectedDeliveryDate >= fromDate && x.ExpectedDeliveryDate <= toDate
                                  group x by new
                                  {
                                      x.ExpectedDeliveryDate,
                                      x.PartNo
                                  } into g

                                  select new
                                  {
                                      Year = g.Key.ExpectedDeliveryDate.Year,
                                      Month = g.Key.ExpectedDeliveryDate.Month,
                                      Day = g.Key.ExpectedDeliveryDate.Day,
                                      PartNo = g.Key.PartNo,
                                      QuantityPlan = g.Sum(_ => _.Quantity)
                                  };

            var scanBarcodesDUPLICATE = from x in ProjectDataContext.ScanBarcodes
                               where x.ScanDate >= fromDate && x.ScanDate <= toDate
                               group x by new
                               {
                                   x.ScanDate.Year,
                                   x.ScanDate.Month,
                                   x.ScanDate.Day,
                                   x.PartNo
                               } into g

                               select new
                               {
                                   Year = g.Key.Year,
                                   Month = g.Key.Month,
                                   Day = g.Key.Day,
                                   PartNo = g.Key.PartNo,
                                   QuantityScan = g.Count(),
                                   QuantityOK = g.Where(_ => _.ResultStatus == GlobalConstants.ResultStatusValue.OK).Count(),
                                   QuantityNG = g.Where(_ => _.ResultStatus == GlobalConstants.ResultStatusValue.Duplicate).Count()
                               };

            var result = from x in productionPlans
                         join y in scanBarcodesDUPLICATE on new { x.PartNo, x.Year, x.Month, x.Day } equals new { y.PartNo, y.Year, y.Month, y.Day } into a
                         from z in a.DefaultIfEmpty()
                         select new { x, z };

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
                                     QuantityPlan = 0,
                                     QuantityScan = g.Count(),
                                     QuantityOK = 0,
                                     QuantityNG = g.Count()
                                 };

            List<ReportSyntheticProductionPlan> reportSyntheticProductionPlans = new List<ReportSyntheticProductionPlan>();
            if (result.Any())
            {
                ReportSyntheticProductionPlan reportSyntheticProductionPlan;
                foreach (var item in result)
                {
                    reportSyntheticProductionPlan = new ReportSyntheticProductionPlan();
                    reportSyntheticProductionPlan.ExpectedDeliveryDate = new DateTime(item.x.Year, item.x.Month, item.x.Day);
                    reportSyntheticProductionPlan.PartNo = item.x.PartNo;
                    reportSyntheticProductionPlan.QuantityPlan = item.x.QuantityPlan;
                    reportSyntheticProductionPlan.QuantityScan = (item.z != null ? item.z.QuantityScan : 0);
                    reportSyntheticProductionPlan.QuantityOK = (item.z != null ? item.z.QuantityOK : 0);
                    reportSyntheticProductionPlan.QuantityNG = (item.z != null ? item.z.QuantityNG : 0);
                    reportSyntheticProductionPlans.Add(reportSyntheticProductionPlan);
                }
            }
            if (scanBarcodesNG.Any())
            {
                ReportSyntheticProductionPlan reportSyntheticProductionPlan;
                foreach (var item in scanBarcodesNG)
                {
                    reportSyntheticProductionPlan = new ReportSyntheticProductionPlan();
                    reportSyntheticProductionPlan.ExpectedDeliveryDate = new DateTime(item.Year, item.Month, item.Day);
                    reportSyntheticProductionPlan.PartNo = item.PartNo;
                    reportSyntheticProductionPlan.QuantityPlan = item.QuantityPlan;
                    reportSyntheticProductionPlan.QuantityScan = item.QuantityScan;
                    reportSyntheticProductionPlan.QuantityOK = item.QuantityOK;
                    reportSyntheticProductionPlan.QuantityNG = item.QuantityNG;
                    reportSyntheticProductionPlans.Add(reportSyntheticProductionPlan);
                }
            }
            return reportSyntheticProductionPlans;
        }
    }
}