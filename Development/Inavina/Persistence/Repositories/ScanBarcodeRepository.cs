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
    public class ScanBarcodeRepository : Repository<ScanBarcode>
    {
        public string id = "";

        public ScanBarcodeRepository(ProjectDataContext projectDataContext) : base(projectDataContext)
        {
        }

        public ProjectDataContext ProjectDataContext
        {
            get { return Context as ProjectDataContext; }
        }

        public void Save(ScanBarcode scanBarcode)
        {
            if (String.IsNullOrEmpty(scanBarcode.Id))
            {
                scanBarcode.Id = GetAutoID();
                scanBarcode.UserID = GlobalConstants.userID;
                scanBarcode.Status = GlobalConstants.StatusValue.Using;
                scanBarcode.CreatedAt = DateTime.Now;
                scanBarcode.CreatedBy = GlobalConstants.username;
                Add(scanBarcode);
                id = scanBarcode.Id;
            }
            else
            {
                Update(scanBarcode);
            }
        }

        public void Update(ScanBarcode scanBarcode)
        {
            error = false;
            errorMessage = "";
            try
            {
                var raw = FirstOrDefault(_ => _.Id.Equals(scanBarcode.Id));
                if (raw != null)
                {
                    raw.CollectInformation(scanBarcode);
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
                var scanBarcode = FirstOrDefault(_ => _.Id.Equals(id));
                if (scanBarcode != null)
                {
                    scanBarcode.Status = GlobalConstants.StatusValue.NoUse;
                    scanBarcode.EditedAt = DateTime.Now;
                    scanBarcode.EditedBy = GlobalConstants.username;
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

        public ScanBarcode CheckIsExist(string barcode)
        {
            return FirstOrDefault(_ => _.Barcode.Trim() == barcode && _.ResultStatus == GlobalConstants.ResultStatusValue.OK);
        }
    }
}