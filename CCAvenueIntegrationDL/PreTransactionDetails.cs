using System;
using System.Collections.Generic;
using Telerik.OpenAccess;

namespace CCAvenueIntegrationDL
{
    [Persistent]
    public class PreTransactionDetails
    {
        public PreTransactionDetails()
        {
            MyCarts = new List<MyCart>();
            EntryTime = DateTime.Now;
        }

        public PaymentTypes PaymentTypeId { get; set; }

        public string TransactionId { get; set; }

        public TransactionTypes TransactionType { get; set; }

        public string InvoiceIds { get; set; }

        public string DebitNoteId { get; set; }

        public string Description { get; set; }

        public Double SellingCurrencyAmount { get; set; }

        public string RedirectUrl { get; set; }

        public string Checksum { get; set; }

        public DateTime EntryTime { get; set; }

        public TransactionStatus TransactionStatus { get; set; }

        public IList<MyCart> MyCarts { get; set; }
    }

    public enum PaymentTypes
    {
        InternalType = 1,
        ExternalType = 2
    }

    public enum UserTypes
    {
        InternalType = 1,
        ExternalType = 2
    }

    public enum TransactionTypes
    {
        InternalType = 1,
        ExternalType = 2
    }

    public enum TransactionStatus
    {
        Requested = 1,
        Completed = 2,
        Pending = 3
    }
}