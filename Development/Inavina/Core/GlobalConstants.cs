using Inavina.Core.Domain;
using Registration.Core.License;
using System;
using System.Collections.Generic;
using System.Data;

namespace Inavina.Core
{
    public class GlobalConstants
    {
        #region Default Values
        public static readonly log4net.ILog log = log4net.LogManager.GetLogger("ScanBarcode");
        public static string keySoft = "KSOFT";
        public static string saltSoft = "O12ab88cKh@nh";
        public static kLicense license;
        public static string userID = "";
        public static string username = "";
        public static string fullName = "";
        public static string printerName = "Printer";
        public static string portCOM = "COM1";
        public static string machineNo = "";
        public static string machineName = "";
        public static string VN = "VN001208";
        public static int language = 0;
        public static bool mustUseBarcodeReader = false;
        public static List<Shift> shifts = new List<Shift>();
        public static List<LanguageLibrary> languageLibrarys = new List<LanguageLibrary>();
        public static int defaultSaltLength = 5;
        public static bool debugMode = false;
        public enum GenderValue { Female, Male }
        public enum StatusValue { NoUse, Using }
        public enum ProductionStatusValue { None, InProgress, Completed, Hold }
        public enum ResultStatusValue { Empty, OK, Duplicate, NotFound, NG }
        public enum LanguageValue { Vietnamese, English }
        public enum ControlSerialData { OK, NG }
        #endregion
    }
}
