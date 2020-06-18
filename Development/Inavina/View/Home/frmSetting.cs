﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using Inavina.Persistence;
using Inavina.Persistence.Repositories;
using Inavina.Core;
using Inavina.Core.Helper;
using Inavina.Core.Domain;
using System.Drawing.Printing;
using System.IO.Ports;

namespace Inavina.View.Home
{
    public partial class frmSetting : DevExpress.XtraEditors.XtraForm
    {
        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            KeyEventArgs e = new KeyEventArgs(keyData);
            if (e.KeyCode == Keys.F1)
            {
                btnSave_Click(null, null);
                return true;
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }

        public frmSetting()
        {
            InitializeComponent();
        }

        private void frmSetting_Load(object sender, EventArgs e)
        {
            LanguageTranslate.ChangeLanguageForm(this);
            LoadPrinter(); 
            LoadPortCOM();
            txtCompany.Text = Properties.Settings.Default.Company;
            txtAddress.Text = Properties.Settings.Default.Address;
            txtPhone.Text = Properties.Settings.Default.Phone;
            txtVN.Text = Properties.Settings.Default.VN;
            cbbPrinter.Text = (GeneralHelper.ValidPrinter(Properties.Settings.Default.PrinterName) ? Properties.Settings.Default.PrinterName : "");
            cbbPortCOM.Text = Properties.Settings.Default.PortCOM;
            chkMustUseBarcodeReader.Checked = Properties.Settings.Default.MustUseBarcodeReader;
            txtCountTimeReset.Value = Properties.Settings.Default.CountTimeReset;
        }

        private void LoadPrinter()
        {
            cbbPrinter.Items.Clear();
            try
            {
                cbbPrinter.Items.Add("");
                foreach (string installedPrinters in PrinterSettings.InstalledPrinters)
                {
                    cbbPrinter.Items.Add(installedPrinters);
                }
            }
            catch { }
        }

        public void LoadPortCOM()
        {
            cbbPrinter.Items.Clear();
            try
            {
                cbbPortCOM.Items.Add("");
                foreach (string portName in SerialPort.GetPortNames())
                {
                    cbbPortCOM.Items.Add(portName);
                }
            }
            catch { }
        }

        private bool CheckData()
        {
            if (txtCompany.Text.Trim() == "")
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa điền dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtCompany.Focus();
                return false;
            }
            else if (txtVN.Text.Trim() == "")
            {
                XtraMessageBox.Show(LanguageTranslate.ChangeLanguageText("Chưa điền dữ liệu"), LanguageTranslate.ChangeLanguageText("Thông báo"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtCompany.Focus();
                return false;
            }
            return true;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!CheckData()) return;
            Properties.Settings.Default.Company = txtCompany.Text.Trim();
            Properties.Settings.Default.Address = txtAddress.Text.Trim();
            Properties.Settings.Default.Phone = txtPhone.Text.Trim();
            Properties.Settings.Default.VN = txtVN.Text.Trim();
            Properties.Settings.Default.PrinterName = cbbPrinter.Text.Trim();
            Properties.Settings.Default.PortCOM = cbbPortCOM.Text.Trim();
            Properties.Settings.Default.MustUseBarcodeReader = chkMustUseBarcodeReader.Checked;
            Properties.Settings.Default.CountTimeReset = (int)txtCountTimeReset.Value;
            Properties.Settings.Default.Save();

            GlobalConstants.printerName = Properties.Settings.Default.PrinterName;
            GlobalConstants.portCOM = Properties.Settings.Default.PortCOM;
            GlobalConstants.language = Properties.Settings.Default.Language;
            GlobalConstants.machineName = Environment.MachineName;
            GlobalConstants.VN = Properties.Settings.Default.VN;
            GlobalConstants.mustUseBarcodeReader = Properties.Settings.Default.MustUseBarcodeReader;
            GlobalConstants.countTimeReset = Properties.Settings.Default.CountTimeReset;

            Close();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}