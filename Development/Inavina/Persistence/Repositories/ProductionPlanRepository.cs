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
    }
}