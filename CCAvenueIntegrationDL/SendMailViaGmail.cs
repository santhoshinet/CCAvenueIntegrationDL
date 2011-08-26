using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mail;

namespace CCAvenueIntegrationDL
{
    public class SendMailViaGmail
    {
        public string PGmailAccount { get; set; }

        public string PGmailPassword { get; set; }

        public bool SendMail(List<string> mailIds, string subject, string body, List<string> attachmentFilePaths)
        {
            try
            {
                var myMailMessage = new MailMessage();
                myMailMessage.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
                myMailMessage.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "465");
                myMailMessage.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", "2");
                myMailMessage.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
                //Use 0 for anonymous
                myMailMessage.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", PGmailAccount);
                myMailMessage.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", PGmailPassword);
                myMailMessage.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");
                myMailMessage.From = PGmailAccount;
                if (mailIds != null && mailIds.Count > 0)
                {
                    string toMails = mailIds.Aggregate(string.Empty, (current, mailid) => current + (mailid + ";"));
                    toMails = toMails.Substring(0, toMails.Length - 1);
                    myMailMessage.To = toMails;
                    myMailMessage.Subject = subject;
                    var pFormat = new MailFormat();
                    pFormat = MailFormat.Html;
                    myMailMessage.BodyFormat = pFormat;
                    myMailMessage.Body = body;
                    //string pAttachmentPath = "//servername/filename"; //contains the path of the attachment (if any)
                    //if (pAttachmentPath.Trim() != "")
                    //{
                    // MailAttachment MyEmailAttachment = new MailAttachment(pAttachmentPath);
                    // myMailMessage.Attachments.Add(MyEmailAttachment);
                    // myMailMessage.Priority = MailPriority.High;
                    //}
                    if (attachmentFilePaths != null && attachmentFilePaths.Count > 0)
                    {
                        foreach (string attachmentFilePath in attachmentFilePaths)
                        {
                            var attachment = new MailAttachment(attachmentFilePath);
                            myMailMessage.Attachments.Add(attachment);
                        }
                    }
                    myMailMessage.Priority = MailPriority.High;
                    SmtpMail.SmtpServer = "smtp.gmail.com:465";
                    SmtpMail.Send(myMailMessage);
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}