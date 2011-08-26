using System;
using System.Collections.Generic;
using System.Text;
using System.Web;

namespace CCAvenueIntegrationDL
{
    public class ToCcAvenue
    {
        private string _gmailUsername;
        private string _gmailPassword;
        private bool _isErrorMailConfigured;
        private List<string> _tomails;

        public void ConfigureEmail(string gmailUsername, string gmailPassword, List<string> tomails)
        {
            _gmailUsername = gmailUsername;
            _gmailPassword = gmailPassword;
            _isErrorMailConfigured = true;
            _tomails = tomails;
        }

        public string ProcessCcAvenuePostBack(int paymentTypeId,string transId, int userId, int userType, int transactionType,string invoiceIds, string debitNoteIds, string description,double sellingCurrencyAmount, double accountingCurrencyAmount,  string username, string address1, string city,string state, string zip, string country, string telno,string emailaddr, string ccAvenueMerchantId, string ccAvenueWorkingKey, string ccAvenueRedirectUrl)
        {
            var ccAvenuePostForm = new StringBuilder();
            try
            {
                /*int paymentTypeId = Convert.ToInt32(request.QueryString["paymenttypeid"]);
                string transId = request.QueryString["transid"];
                int userId = Convert.ToInt32(request.QueryString["userid"]);
                int userType = Convert.ToInt32(request.QueryString["usertype"]);
                int transactionType = Convert.ToInt32(request.QueryString["transactiontype"]);
                string invoiceIds = request.QueryString["invoiceids"];
                string debitNoteIds = request.QueryString["debitnoteids"];
                string description = request.QueryString["description"];
                double sellingCurrencyAmount = Convert.ToDouble(request.QueryString["sellingcurrencyamount"]);
                double accountingCurrencyAmount = Convert.ToDouble(request.QueryString["accountingcurrencyamount"]);
                string redirectUrl = request.QueryString["redirecturl"];
                string checksum = request.QueryString["checksum"];

                if (transId == null)
                    transId = string.Empty;
                if (invoiceIds == null)
                    invoiceIds = string.Empty;
                if (debitNoteIds == null)
                    debitNoteIds = string.Empty;
                
                if (Utilities.VerifyChecksum(paymentTypeId.ToString(), transId, userId.ToString(), userType.ToString(), transactionType.ToString(), invoiceIds, debitNoteIds, description, sellingCurrencyAmount.ToString(), accountingCurrencyAmount.ToString(), ccAvenueChecksumSaltKey, checksum))
                {
                    string username = request.QueryString["name"];
                    string emailaddr = request.QueryString["emailaddr"];
                    string address1 = request.QueryString["address1"];
                    string address2 = request.QueryString["address2"];
                    string address3 = request.QueryString["address3"];
                    string city = request.QueryString["city"];
                    string state = request.QueryString["state"];
                    string country = request.QueryString["country"];
                    string zip = request.QueryString["zip"];
                    string telno = request.QueryString["telno"];
                    string faxnocc = request.QueryString["faxNoCc"];

                    // saving transaction into DB
                    var scope = ObjectScopeProvider1.GetNewObjectScope();
                    scope.Transaction.Begin();

                    var user = new User
                                   {
                                       Username = username,
                                       Address = address1 + Environment.NewLine + address2 + Environment.NewLine + address3,
                                       City = city,
                                       Country = country,
                                       Email = emailaddr,
                                       Faxno = faxnocc,
                                       State = state,
                                       Mobileno = telno,
                                       Zip = zip
                                   };

                    var preTransactionDetails = new PreTransactionDetails
                                                    {
                                                        DebitNoteId = debitNoteIds,
                                                        Description = description,
                                                        EntryTime = DateTime.Now,
                                                        InvoiceIds = invoiceIds,
                                                        PaymentTypeId = (PaymentTypes)paymentTypeId,
                                                        RedirectUrl = redirectUrl,
                                                        SellingCurrencyAmount = sellingCurrencyAmount,
                                                        TransactionId = transId,
                                                        TransactionStatus = TransactionStatus.Requested,
                                                        TransactionType = (TransactionTypes)transactionType,
                                                        //User = user
                                                    };

                    scope.Add(preTransactionDetails);
                    scope.Transaction.Commit(); */

                    // Preparing post form for cc avenue
                    string ccavenuechecksum = Utilities.Getchecksum(ccAvenueMerchantId, transId, sellingCurrencyAmount.ToString(), ccAvenueRedirectUrl, ccAvenueWorkingKey);
                    ccAvenuePostForm.Append("<form method='post' name='paymentpage' action='https://www.ccavenue.com/shopzone/cc_details.jsp'>");
                    ccAvenuePostForm.Append("<input type='hidden' name='Order_Id' value='" + transId + "' runat='server' />");
                    ccAvenuePostForm.Append("<input type='hidden' name='Amount' value='" + sellingCurrencyAmount + "' runat='server' />");
                    ccAvenuePostForm.Append("<input type='hidden' name='Merchant_Id' value='" + ccAvenueMerchantId + "' runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='Redirect_Url' value='" + ccAvenueRedirectUrl + "' runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='Currency' value='USD'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='TxnType' value='A'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='ActionID' value='TXN'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='Checksum' value='" + ccavenuechecksum + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_cust_name' value='" + username + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_middle_name' value=''  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_last_name' value=''  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_cust_address' value='" + address1 + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_cust_city' value='" + city + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_cust_state' value='" + state + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_zip_code' value='" + zip + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_cust_country' value='" + country + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_cust_tel_Ctry' value='" + telno + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_cust_tel' value='" + telno + "'  runat='server'  />");
                    ccAvenuePostForm.Append("<input type='hidden' name='billing_cust_email' value='" + emailaddr + "'  runat='server'  />");
                    ccAvenuePostForm.Append("</form>");
                //}
            }
            catch (Exception exception)
            {
                if (_isErrorMailConfigured)
                {
                    //Mail Sending here
                    var sendmail = new SendMailViaGmail
                                       {
                                           PGmailAccount = _gmailUsername,
                                           PGmailPassword = _gmailPassword
                                       };
                    var messageBody = new StringBuilder();
                    messageBody.Append("The following error has been raised while processing online payment transaction <br />");
                    messageBody.Append("<Br /> Error: ");
                    messageBody.Append(!string.IsNullOrEmpty(exception.StackTrace) ? exception.StackTrace : exception.Message);
                    sendmail.SendMail(_tomails, "CC Avenue Integration Module Error", messageBody.ToString(), null);
                }
                throw;
            }

            return ccAvenuePostForm.ToString();
        }
    }
}