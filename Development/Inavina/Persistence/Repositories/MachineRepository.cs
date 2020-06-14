using Inavina.Core.Domain;
using Inavina.Core.Repositories;
using System.Collections.Generic;
using System.Linq;
using System;
using Inavina.Core;
using Inavina.Core.Helper;

namespace Inavina.Persistence.Repositories
{
    public class MachineRepository : Repository<Machine>
    {
        public string id = "";

        public MachineRepository(ProjectDataContext projectDataContext) : base(projectDataContext)
        {
        }

        public ProjectDataContext ProjectDataContext
        {
            get { return Context as ProjectDataContext; }
        }

        public void Save(Machine machine)
        {
            if (String.IsNullOrEmpty(machine.Id))
            {
                machine.Id = GetAutoID();
                machine.CreatedAt = DateTime.Now;
                machine.CreatedBy = GlobalConstants.username;
                Add(machine);
                id = machine.Id;
            }
            else
            {
                Update(machine);
            }
        }

        public void Update(Machine machine)
        {
            error = false;
            errorMessage = "";
            try
            {
                var raw = FirstOrDefault(_ => _.Id.Equals(machine.Id));
                if (raw != null)
                {
                    raw.CollectInformation(machine);
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

        public string GetMachineNo(string machineName)
        {
            string result = "01";
            try
            {
                var machines = Find(_ => _.MachineName.Equals(machineName)).OrderBy(_ => _.MachineNo).FirstOrDefault();
                result = (machines != null ? machines.Id : "01");
            }
            catch { }
            return result;
        }
    }
}