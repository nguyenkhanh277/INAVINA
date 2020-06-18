using Inavina.Core.Domain;
using Inavina.Core.Repositories;
using System.Collections.Generic;
using System.Linq;
using System;
using Inavina.Core;
using Inavina.Core.Helper;

namespace Inavina.Persistence.Repositories
{
    public class ShiftRepository : Repository<Shift>
    {
        public string id = "";

        public ShiftRepository(ProjectDataContext projectDataContext) : base(projectDataContext)
        {
        }

        public ProjectDataContext ProjectDataContext
        {
            get { return Context as ProjectDataContext; }
        }

        public void Save(Shift shift)
        {
            if (String.IsNullOrEmpty(shift.Id))
            {
                shift.Id = GetAutoID();
                shift.CreatedAt = DateTime.Now;
                shift.CreatedBy = GlobalConstants.username;
                Add(shift);
                id = shift.Id;
            }
            else
            {
                Update(shift);
            }
        }

        public void Update(Shift shift)
        {
            error = false;
            errorMessage = "";
            try
            {
                var raw = FirstOrDefault(_ => _.Id.Equals(shift.Id));
                if (raw != null)
                {
                    raw.CollectInformation(shift);
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

        public string GetAutoID()
        {
            return Guid.NewGuid().ToString();
        }

        public string GetShiftNo()
        {
            string result = "0001";
            try
            {
                DateTime currentDateTime = DateTime.Now;
                DateTime startOfDay = currentDateTime.Date;
                // Get most recent shift that started today and has not ended yet
                var shift = GlobalConstants.shifts.Where(_ => startOfDay.Add(_.BeginTime) <= currentDateTime
                                 && startOfDay.Add(_.BeginTime).AddHours(_.LengthHours) >= currentDateTime)
                          .OrderByDescending(_ => _.BeginTime)
                          .FirstOrDefault();

                // If none were found that had a start date today, get the latest shift
                // (would be one that started yesterday) as long as its end time today has not passed yet
                if (shift == null)
                {
                    shift = GlobalConstants.shifts.Where(_ => startOfDay.AddDays(-1).Add(_.BeginTime) <= currentDateTime)
                              .OrderByDescending(_ => _.BeginTime)
                              .FirstOrDefault();
                }
                result = (shift != null ? shift.ShiftNo : "0001");
            }
            catch { }
            return result;
        }
    }
}