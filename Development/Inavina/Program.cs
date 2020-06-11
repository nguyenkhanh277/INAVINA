using DevExpress.XtraEditors;
using Inavina.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Inavina
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            DevExpress.Skins.SkinManager.EnableFormSkins();
            DevExpress.UserSkins.BonusSkins.Register();
            DevExpress.LookAndFeel.UserLookAndFeel.Default.SetSkinStyle(Properties.Settings.Default.Theme);
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            License();
            Login();
        }

        static void License()
        {
            DialogResult dr;
            GlobalConstants.license = new Khoai.Core.License.kLicense();
            Khoai.Core.License.kLicenseType lic_type = Khoai.Core.License.kLicenseType.Inactive;
            try
            {


                Khoai.Fusion.Library.kKeycode keycode = new Khoai.Fusion.Library.kKeycode()
                {
                    Prefix = Properties.Settings.Default.Company,
                    Salt = "167641176" + Properties.Settings.Default.Company,
                    ProductLength = Khoai.Fusion.Library.kProductLength.Twelve,
                    ProductType = Khoai.Fusion.Library.kProductType.CpuId,
                    SerialType = Khoai.Fusion.Library.kSerialType.Second
                };
                GlobalConstants.license.Keycode = keycode;
                GlobalConstants.license.FileName = Properties.Settings.Default.Company + ".set";
                GlobalConstants.license.TrialKeyUsed = @"SOFTWARE\WindowsNT\" + Properties.Settings.Default.Company;
                lic_type = GlobalConstants.license.IsLicensed(false);
            }
            catch
            { }
            switch (lic_type)
            {
                default:
                case Khoai.Core.License.kLicenseType.Inactive:
                case Khoai.Core.License.kLicenseType.Incorrect:
                    if (!Khoai.Fusion.Library.kNetwork.IsInternetConnected())
                    {
                        XtraMessageBox.Show("Ứng dụng cần kết nối mạng để kích hoạt.\nVui lòng kiểm tra lại kết nối mạng và thử lại sau.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }
                    else if (!Khoai.Core.Uc.kForm.IsRunAsAdministrator())
                    {
                        dr = XtraMessageBox.Show("Ứng dụng cần quyền Quản trị để kích hoạt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        if (dr != DialogResult.OK)
                        {
                            return;
                        }
                        return;
                    }
                    Khoai.Core.License.frmLicense frmLicense = new Khoai.Core.License.frmLicense();
                    frmLicense.License = GlobalConstants.license;
                    frmLicense.BuyLicenseUrl = "http://google.com";
                    frmLicense.Text = "Đăng ký sử dụng phần mềm" + Properties.Settings.Default.Company;
                    frmLicense.StartPosition = FormStartPosition.CenterScreen;
                    frmLicense.TrialDateLimit = Khoai.Fusion.Library.kDateLimit.Seven;
                    frmLicense.IsOnlineActivationCheck = true;
                    frmLicense.ShowInTaskbar = true;
                    dr = frmLicense.ShowDialog();
                    break;
                case Khoai.Core.License.kLicenseType.Trial:
                case Khoai.Core.License.kLicenseType.Expired:
                    View.Home.frmLicenses frm = new View.Home.frmLicenses();
                    dr = frm.ShowDialog();
                    break;
                case Khoai.Core.License.kLicenseType.Serial:
                    dr = DialogResult.OK;
                    break;
            }
            if (dr != DialogResult.OK)
            {
                Environment.Exit(1);
                return;
            }
        }

        static void Login()
        {
            GlobalConstants.machineName = Environment.MachineName;
            View.Home.frmSignIn frm = new View.Home.frmSignIn();
            DialogResult dr = frm.ShowDialog();
            if (dr != DialogResult.OK)
            {
                Application.Exit();
                return;
            }
            Application.Run(new View.Home.frmMain());
        }
    }
}
