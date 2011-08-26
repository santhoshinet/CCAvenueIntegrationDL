using System;
using System.Security.Cryptography;
using System.Text;

namespace CCAvenueIntegrationDL
{
    public class Utilities
    {
        public static string Getchecksum(string merchantId, string orderId, string amount, string redirectUrl, string workingKey)
        {
            string str = merchantId + "|" + orderId + "|" + amount + "|" + redirectUrl + "|" + workingKey;
            const long adler = 1;
            return Adler32(adler, str);
        }

        public static string Verifychecksum(string merchantId, string orderId, string amount, string authDesc, string workingKey, string checksum)
        {
            string str = merchantId + "|" + orderId + "|" + amount + "|" + authDesc + "|" + workingKey;
            const long adler = 1;
            string adlerResult = Adler32(adler, str);

            string retval = string.Compare(adlerResult, checksum, true) == 0 ? "true" : "false";
            return retval;
        }

        private static string Adler32(long adler, string strPattern)
        {
            const long baseVal = 65521;
            long s1 = Andop(adler, 65535);
            long s2 = Andop(Cdec(Rightshift(Cbin(adler), 16)), 65535);

            for (int n = 0; n < strPattern.Length; n++)
            {
                char[] testchar = (strPattern.Substring(n, 1)).ToCharArray();
                var intTest = (long)testchar[0];
                s1 = (s1 + intTest) % baseVal;
                s2 = (s2 + s1) % baseVal;
            }
            return (Cdec(Leftshift(Cbin(s2), 16)) + s1).ToString();
        }

        private static long Power(long num)
        {
            long result = 1;
            for (int i = 1; i <= num; i++)
            {
                result = result * 2;
            }
            return result;
        }

        private static long Andop(long op1, long op2)
        {
            string op = "";

            string op3 = Cbin(op1);
            string op4 = Cbin(op2);

            for (int i = 0; i < 32; i++)
            {
                op = op + "" + ((long.Parse(op3.Substring(i, 1))) & (long.Parse(op4.Substring(i, 1))));
            }
            return Cdec(op);
        }

        private static string Cbin(long num)
        {
            string bin = "";
            do
            {
                bin = (((num % 2)) + bin);
                num = (long)Math.Floor(Convert.ToDouble(num / 2));
            } while (num != 0);

            long tempCount = 32 - bin.Length;

            for (int i = 1; i <= tempCount; i++)
            {
                bin = "0" + bin;
            }
            return bin;
        }

        private static string Leftshift(string str, long num)
        {
            long tempCount = 32 - str.Length;

            for (int i = 1; i <= tempCount; i++)
            {
                str = "0" + str;
            }

            for (int i = 1; i <= num; i++)
            {
                str = str + "0";
                str = str.Substring(1, str.Length - 1);
            }
            return str;
        }

        private static string Rightshift(string str, long num)
        {
            for (int i = 1; i <= num; i++)
            {
                str = "0" + str;
                str = str.Substring(0, str.Length - 1);
            }
            return str;
        }

        private static long Cdec(string strNum)
        {
            long dec = 0;
            for (int n = 0; n < strNum.Length; n++)
            {
                dec = dec + long.Parse(strNum.Substring(n, 1)) * Power(strNum.Length - (n + 1));
            }
            return dec;
        }

        public static bool VerifyChecksum(string paymentTypeId, string transId, string userId, string userType, string transactionType, string invoiceIds, string debitNoteIds, string description, string sellingAmount, string accountingAmount, string key, string checksum)
        {
            string str = paymentTypeId + "|" + transId + "|" + userId + "|" + userType + "|" + transactionType + "|" + invoiceIds + "|" + debitNoteIds + "|" + description + "|" + sellingAmount + "|" + accountingAmount + "|" + key;
            var hash = new MD5CryptoServiceProvider();
            byte[] tBytes = Encoding.ASCII.GetBytes(str);
            byte[] hBytes = hash.ComputeHash(tBytes);
            var sb = new StringBuilder();
            foreach (byte t in hBytes)
                sb.AppendFormat("{0:x2}", t);
            str = sb.ToString();
            if (string.Compare(str, checksum, true) == 0)
                return true;
            return false;
        }

        public static string GenerateCheckSum(string paymentTypeId, string transId, string userId, string userType, string transactionType, string invoiceIds, string debitNoteIds, string description, string sellingAmount, string accountingAmount, string key)
        {
            string str = paymentTypeId + "|" + transId + "|" + userId + "|" + userType + "|" + transactionType + "|" + invoiceIds + "|" + debitNoteIds + "|" + description + "|" + sellingAmount + "|" + accountingAmount + "|" + key;
            var hash = new MD5CryptoServiceProvider();
            byte[] tBytes = Encoding.ASCII.GetBytes(str);
            byte[] hBytes = hash.ComputeHash(tBytes);
            var sb = new StringBuilder();
            foreach (byte t in hBytes)
                sb.AppendFormat("{0:x2}", t);
            return sb.ToString();
        }

        public static string GenerateCheckSum(string transId, string sellingAmount, string accountingAmount, string status, string rkey, string key)
        {
            string str = transId + "|" + sellingAmount + "|" + accountingAmount + "|" + status + "|" + rkey + "|" + key;
            var hash = new MD5CryptoServiceProvider();
            byte[] tBytes = Encoding.ASCII.GetBytes(str);
            byte[] hBytes = hash.ComputeHash(tBytes);
            var sb = new StringBuilder();
            foreach (byte t in hBytes)
                sb.AppendFormat("{0:x2}", t);
            return sb.ToString();
        }

        public static bool VerifyChecksum(string transId, string sellingAmount, string accountingAmount, string status, string rkey, string key, string checksum)
        {
            string str = transId + "|" + sellingAmount + "|" + accountingAmount + "|" + status + "|" + rkey + "|" + key;
            var hash = new MD5CryptoServiceProvider();
            byte[] tBytes = Encoding.ASCII.GetBytes(str);
            byte[] hBytes = hash.ComputeHash(tBytes);
            var sb = new StringBuilder();
            foreach (byte t in hBytes)
                sb.AppendFormat("{0:x2}", t);
            str = sb.ToString();
            if (string.Compare(str, checksum, true) == 0)
                return true;
            return false;
        }
    }
}