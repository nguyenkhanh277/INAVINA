using Inavina.Core.Domain;
using Khoai.Core.License;
using System;
using System.Collections.Generic;
using System.Data;

namespace Inavina.Core
{
    public class GlobalConstants
    {
        #region Default Values
        public static kLicense license;
        public static string userID = "";
        public static string username = "";
        public static string fullName = "";
        public static string printerName = "Printer";
        public static string portCOM = "COM1";
        public static string machineNo = "";
        public static string machineName = "";
        public static int language = 0;
        public static List<LanguageLibrary> languageLibrary = new List<LanguageLibrary>();
        public static int defaultSaltLength = 5;
        public static bool debugMode = true;
        public enum SearchConditions { }
        public enum GenderValue { Female, Male }
        public enum StatusValue { NoUse, Using }
        public enum ProductionStatusValue { None, InProgress, Completed, Hold }
        public enum ResultStatusValue { Empty, OK, Duplicate, NotFound, NG }
        public enum LanguageValue { Vietnamese, English }
        public enum ControlSerialData { OK, NG, RESET }
        #endregion
    }
}
