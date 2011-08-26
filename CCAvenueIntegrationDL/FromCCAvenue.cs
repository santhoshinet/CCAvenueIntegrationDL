using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;

namespace CCAvenueIntegrationDL
{
    public class FromCcAvenue
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

        public TransactionStatus ProcessCcAvenueData(NameValueCollection form, string ccAvenueWorkingKey)
        {
            try
            {
                string merchantId = form["Merchant_Id"];
                string orderId = form["Order_Id"];
                string amount = form["Amount"];
                string authDesc = form["AuthDesc"];
                string chksum = form["Checksum"];
                string checksum = Utilities.Verifychecksum(merchantId, orderId, amount, authDesc, ccAvenueWorkingKey, chksum);
                if (checksum == null)
                {
                    return TransactionStatus.Forgery;
                }
                if (checksum == "true")
                {
                    if (authDesc == "Y")
                    {
                        // modify the status and sending mail
                        var scope = ObjectScopeProvider1.GetNewObjectScope();
                        List<PreTransactionDetails> transactionDetailses = (from c in scope.GetOqlQuery<PreTransactionDetails>().ExecuteEnumerable()
                                                                            where c.TransactionId.Equals(orderId)
                                                                            select c).ToList();
                        if (transactionDetailses.Count > 0)
                        {
                            // modifying status here

                            scope.Transaction.Begin();
                            transactionDetailses[0].TransactionStatus = CCAvenueIntegrationDL.TransactionStatus.Completed;
                            scope.Add(transactionDetailses[0]);
                            scope.Transaction.Commit();

                            try
                            {
                                //Mail Sending here
                                var sendmail = new SendMailViaGmail
                                                   {
                                                       PGmailAccount = _gmailUsername,
                                                       PGmailPassword = _gmailPassword
                                                   };
                                var messageBody = new StringBuilder();
                                messageBody.Append("The sales transaction had been processed with the following details <br />");
                                messageBody.Append("Trans-ID : " + orderId + "<br/>");
                                /*messageBody.Append("Username : " + transactionDetailses[0].User.Username + "<br/>");
                                messageBody.Append("Email : " + transactionDetailses[0].User.Email + "<br/>");
                                messageBody.Append("Address: " + transactionDetailses[0].User.Address + "<br/>");
                                messageBody.Append("City: " + transactionDetailses[0].User.City + "<br/>");
                                messageBody.Append("State: " + transactionDetailses[0].User.State + "<br/>");
                                messageBody.Append("Country: " + transactionDetailses[0].User.Country + "<br/>");
                                messageBody.Append("Mobile no: " + transactionDetailses[0].User.Mobileno + "<br/>"); */
                                messageBody.Append("Amount: " + amount + "<br/>");
                                sendmail.SendMail(_tomails, "Transaction Details", messageBody.ToString(), null);
                            }
                            catch (Exception)
                            {
                                return TransactionStatus.Success;
                            }
                        }
                        return TransactionStatus.Success;
                    }
                    if (authDesc == "N")
                    {
                        return TransactionStatus.Declined;
                    }
                    if (authDesc == "B")
                    {
                        return TransactionStatus.PostPoned;
                    }
                    return TransactionStatus.PostPoned;
                }
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
            return TransactionStatus.Forgery;
        }

        public enum TransactionStatus
        {
            Forgery = 1,
            Success = 2,
            Declined = 3,
            PostPoned = 4
        }
    }
}