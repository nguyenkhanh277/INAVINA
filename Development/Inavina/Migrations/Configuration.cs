using Inavina.Core.Domain;
using Inavina.Persistence;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace Inavina.Migrations
{
    using Inavina.Core;
    using Inavina.Core.Helper;
    using System;
    using System.Data.Entity.Migrations;

    internal sealed class Configuration : DbMigrationsConfiguration<Inavina.Persistence.ProjectDataContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(ProjectDataContext projectDataContext)
        {
            FirstUpdate(projectDataContext);
            AddOrUpdateLanguageLibrary(projectDataContext);
        }

        private void AddOrUpdateLanguageLibrary(ProjectDataContext projectDataContext)
        {
            #region LanguageLibrary
            var languageLibrarys = new List<LanguageLibrary>
            {
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "In thất bại",
                    English = "Print failed",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Thông báo",
                    English = "Notification",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Xác nhận",
                    English = "Confirmation",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đăng nhập",
                    English = "Sign In",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Tài khoản",
                    English = "Username",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mật khẩu",
                    English = "Password",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Lưu thông tin đăng nhập",
                    English = "Keep me signed in",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Quên mật khẩu",
                    English = "I forgot my password",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mật khẩu không đúng",
                    English = "Incorrect password",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Tài khoản không tồn tại",
                    English = "Username does not exist",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chương trình chính",
                    English = "Main Menu",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Hệ thống",
                    English = "System",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chức năng",
                    English = "Function",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Báo cáo",
                    English = "Report",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Quản lý người dùng",
                    English = "User management",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Người dùng",
                    English = "Function",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đổi mật khẩu",
                    English = "Change password",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Danh sách máy",
                    English = "Machines List",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Danh sách khuôn",
                    English = "Molds List",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Danh sách ca",
                    English = "Shifts List",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Quản lý PartNumber",
                    English = "PartNumber Management",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đăng ký in mã vạch",
                    English = "Register to print barcode",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Quét mã vạch sản phẩm",
                    English = "Scan the product barcode",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mật khẩu cũ",
                    English = "Old password",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mật khẩu mới",
                    English = "New password",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Xác nhận mật khẩu",
                    English = "Confirm password",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Thư viện ngôn ngữ",
                    English = "Language Library",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Thêm (F1)",
                    English = "Add (F1)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Sửa (F2)",
                    English = "Edit (F2)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Xóa (F3)",
                    English = "Del (F3)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Excel (F4)",
                    English = "Excel (F4)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Lọc (F5)",
                    English = "Refresh (F5)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Phân quyền (F6)",
                    English = "Authority (F6)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chương trình (F7)",
                    English = "Program(F7)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Lưu (F1)",
                    English = "Save (F1)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đóng (ESC)",
                    English = "Close (ESC)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Trạng thái",
                    English = "Status",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Tất cả",
                    English = "All",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Sử dụng",
                    English = "Using",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Ko sử dụng",
                    English = "No User",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Giới tính",
                    English = "Gender",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Nam",
                    English = "Male",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Nữ",
                    English = "Female",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Tên đầy đủ",
                    English = "FullName",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Điện thoại",
                    English = "Phone",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Địa chỉ",
                    English = "Address",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Ghi chú",
                    English = "Note",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chọn",
                    English = "Select",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mã",
                    English = "ID",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Nhóm quyền",
                    English = "Authority Group",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Tiếng Việt",
                    English = "Vietnamese",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Tiếng Anh",
                    English = "English",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chức năng chương trình",
                    English = "Program Function Master",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chương trình",
                    English = "Program",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Diễn giải",
                    English = "Explanation",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chưa điền dữ liệu",
                    English = "No data entered",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chưa chọn dữ liệu",
                    English = "No data selected",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Dữ liệu đã tồn tại",
                    English = "Data already exists",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Dữ liệu không đúng",
                    English = "The data is incorrect",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mã máy",
                    English = "Machine No",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mã khuôn",
                    English = "Mold No",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mã ca",
                    English = "Shift No",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "In lại (F2)",
                    English = "RePrint (F2)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Lưu thành công",
                    English = "Save successfully",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Lưu thất bại",
                    English = "Save failed",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Bạn có muốn hủy thông tin này?",
                    English = "Do you want to cancel this information?",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Bạn có muốn xóa thông tin này?",
                    English = "Do you want to delete this information?",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Hủy thất bại",
                    English = "Cancel failed",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Xóa thất bại",
                    English = "Delete failed",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Ngày đăng ký",
                    English = "Regist date",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Ngày quét mã vạch",
                    English = "Scan barcode date",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Mã vạch",
                    English = "Barcode",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Lưu và in (F1)",
                    English = "Save and Print (F1)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Lịch sử sản xuất",
                    English = "Production history",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Thống kê sản phẩm OK",
                    English = "Product report OK",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Thống kê sản phẩm NG",
                    English = "Product report NG",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Báo cáo tổng hợp",
                    English = "Report synthetic",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đăng ký (F1)",
                    English = "Regist (F1)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Trạng thái sản xuất",
                    English = "Production Status",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Quét mã vạch (F1)",
                    English = "Scan barcode (F1)",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Trình tự công việc",
                    English = "Work order",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Ngày dự kiến giao hàng",
                    English = "Expected Delivery Date",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Số lượng",
                    English = "Quantity",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Trạng thái sản xuất",
                    English = "Production Status",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Chưa xử lý",
                    English = "None",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đang xử lý",
                    English = "In progress",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đã xong",
                    English = "Completed",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Bảo lưu",
                    English = "Hold",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đã bị hủy",
                    English = "NoUse",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new LanguageLibrary
                {
                    Id = Guid.NewGuid().ToString(),
                    Vietnamese = "Đang dùng",
                    English = "Using",
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var languageLibrary in languageLibrarys)
                projectDataContext.LanguageLibrarys.AddOrUpdate(a => a.Id, languageLibrary);
            #endregion
        }

        private void FirstUpdate(ProjectDataContext projectDataContext)
        {
            //return;
            string defaultPassword = "1511";
            string salt = SecurityHelper.CreateSalt(GlobalConstants.defaultSaltLength);
            string encryptedPassword = SecurityHelper.GenerateMD5(defaultPassword, salt);

            #region Add Users
            string userID1 = Guid.NewGuid().ToString();
            string userID2 = Guid.NewGuid().ToString();
            var users = new List<User>
            {
                new User
                {
                    Id = userID1,
                    Username = "admin",
                    Salt = salt,
                    Password = encryptedPassword,
                    FullName = "Administrator",
                    Gender = Core.GlobalConstants.GenderValue.Male,
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new User
                {
                    Id = userID2,
                    Username = "khanh",
                    Salt = salt,
                    Password = encryptedPassword,
                    FullName = "Nguyễn Xuân Khánh",
                    Gender = Core.GlobalConstants.GenderValue.Male,
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var user in users)
                projectDataContext.Users.AddOrUpdate(a => a.Id, user);
            #endregion


            #region Add AuthorityGroup
            string authorityGroup1 = Guid.NewGuid().ToString();
            var authorityGroups = new List<AuthorityGroup>
            {
                new AuthorityGroup
                {
                    Id = authorityGroup1,
                    AuthorityGroupName = "Admin",
                    Sort = 0,
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var authorityGroup in authorityGroups)
                projectDataContext.AuthorityGroups.Add(authorityGroup);
            #endregion


            #region Add ProgramFunctionMaster
            var programFunctionMasters = new List<ProgramFunctionMaster>
            {
                new ProgramFunctionMaster
                {
                    Id = Guid.NewGuid().ToString(),
                    ProgramName = "User",
                    FunctionName = "Add",
                    Explanation = "Add user",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new ProgramFunctionMaster
                {
                    Id = Guid.NewGuid().ToString(),
                    ProgramName = "User",
                    FunctionName = "Edit",
                    Explanation = "Edit user",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new ProgramFunctionMaster
                {
                    Id = Guid.NewGuid().ToString(),
                    ProgramName = "User",
                    FunctionName = "Delete",
                    Explanation = "Delete user",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new ProgramFunctionMaster
                {
                    Id = Guid.NewGuid().ToString(),
                    ProgramName = "User",
                    FunctionName = "Authority",
                    Explanation = "Authority user",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var programFunctionMaster in programFunctionMasters)
                projectDataContext.ProgramFunctionMasters.AddOrUpdate(a => a.Id, programFunctionMaster);
            #endregion


            #region Add ProgramFunctionAuthority
            var programFunctionAuthoritys = new List<ProgramFunctionAuthority>
            {
                new ProgramFunctionAuthority
                {
                    Id = Guid.NewGuid().ToString(),
                    ProgramName = "User",
                    FunctionName = "Add",
                    AuthorityGroupID = authorityGroup1,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new ProgramFunctionAuthority
                {
                    Id = Guid.NewGuid().ToString(),
                    ProgramName = "User",
                    FunctionName = "Edit",
                    AuthorityGroupID = authorityGroup1,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new ProgramFunctionAuthority
                {
                    Id = Guid.NewGuid().ToString(),
                    ProgramName = "User",
                    FunctionName = "Delete",
                    AuthorityGroupID = authorityGroup1,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new ProgramFunctionAuthority
                {
                    Id = Guid.NewGuid().ToString(),
                    ProgramName = "User",
                    FunctionName = "Authority",
                    AuthorityGroupID = authorityGroup1,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var programFunctionAuthority in programFunctionAuthoritys)
                projectDataContext.ProgramFunctionAuthoritys.AddOrUpdate(a => a.Id, programFunctionAuthority);
            #endregion


            #region Add UserAuthority
            var userAuthoritys = new List<UserAuthority>
            {
                new UserAuthority
                {
                    Id = Guid.NewGuid().ToString(),
                    UserID = userID1,
                    AuthorityGroupID = authorityGroup1,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var userAuthority in userAuthoritys)
                projectDataContext.UserAuthoritys.AddOrUpdate(a => a.Id, userAuthority);
            #endregion


            #region Add PartNumber
            var partNumbers = new List<PartNumber>
            {
                new PartNumber
                {
                    Id = Guid.NewGuid().ToString(),
                    PartNo = "AEF75984602",
                    Model = "",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var partNumber in partNumbers)
                projectDataContext.PartNumbers.Add(partNumber);
            #endregion


            #region Add Machine
            var machines = new List<Machine>
            {
                new Machine
                {
                    Id = Guid.NewGuid().ToString(),
                    MachineNo = "01",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new Machine
                {
                    Id = Guid.NewGuid().ToString(),
                    MachineNo = "02",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var machine in machines)
                projectDataContext.Machines.Add(machine);
            #endregion


            #region Add Shift
            var shifts = new List<Shift>
            {
                new Shift
                {
                    Id = Guid.NewGuid().ToString(),
                    ShiftNo = "0001",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new Shift
                {
                    Id = Guid.NewGuid().ToString(),
                    ShiftNo = "0002",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var shift in shifts)
                projectDataContext.Shifts.Add(shift);
            #endregion


            #region Add Mold
            var molds = new List<Mold>
            {
                new Mold
                {
                    Id = Guid.NewGuid().ToString(),
                    MoldNo = "0001",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                },
                new Mold
                {
                    Id = Guid.NewGuid().ToString(),
                    MoldNo = "0002",
                    Status = Core.GlobalConstants.StatusValue.Using,
                    CreatedAt = DateTime.Now,
                    CreatedBy = "Administrator"
                }
            };

            foreach (var mold in molds)
                projectDataContext.Molds.Add(mold);
            #endregion
        }

    }
}