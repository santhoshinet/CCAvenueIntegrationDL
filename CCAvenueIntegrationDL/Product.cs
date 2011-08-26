using System;
using Telerik.OpenAccess;

namespace CCAvenueIntegrationDL
{
    [Persistent]
    public class Product
    {
        public Guid Id { get; set; }

        public string Category { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public double Price { get; set; }

        public File Productfile { get; set; }

        public DeleteStatus Deletedstatus { get; set; }
    }
}