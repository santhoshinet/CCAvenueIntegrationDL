using System.Collections.Generic;
using Telerik.OpenAccess;

namespace CCAvenueIntegrationDL
{
    [Persistent]
    public class User
    {
        public User()
        {
            PreTransactionDetailses = new List<PreTransactionDetails>();
        }

        public string Username { get; set; }

        public string Email { get; set; }

        public string HashedPassword { get; set; }

        public string PasswordSalt { get; set; }

        public string Mobileno { get; set; }

        public bool IsheAdmin { get; set; }


        public string BillingAddress { get; set; }

        public string BillingCity { get; set; }

        public string BillingState { get; set; }

        public string BillingCountry { get; set; }

        public string BillingPin { get; set; }

        public string BillingFaxno { get; set; }


        public string DeliveryAddress { get; set; }

        public string DeliveryCity { get; set; }

        public string DeliveryState { get; set; }

        public string DeliveryCountry { get; set; }

        public string DeliveryPin { get; set; }

        public IList<PreTransactionDetails> PreTransactionDetailses { get; set; }
    }
}