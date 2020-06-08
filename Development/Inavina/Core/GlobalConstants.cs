using Inavina.Core.Domain;
using System;
using System.Collections.Generic;
using System.Data;

namespace Inavina.Core
{
    public class GlobalConstants
    {
        #region Default Values
        public static string userID = "";
        public static string username = "";
        public static string fullName = "";
        public static string printerName = "Printer";
        public static int language = 0;
        public static List<LanguageLibrary> languageLibrary = new List<LanguageLibrary>();
        public static int defaultSaltLength = 5;
        public static bool debugMode = true;
        public enum SearchConditions { }
        public enum GenderValue { Female, Male }
        public enum StatusValue { NoUse, Using }
        public enum ProductionStatusValue { None, InProgress, Completed, Hold }
        public enum ResultStatusValue { None, OK, NG }
        public enum LanguageValue { Vietnamese, English }
        #endregion
    }
}
