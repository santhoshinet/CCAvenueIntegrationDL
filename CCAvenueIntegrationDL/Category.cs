using System;
using System.Collections.Generic;
using Telerik.OpenAccess;

namespace CCAvenueIntegrationDL
{
    [Persistent]
    public class Category
    {
        public Category()
        {
            Products = new List<Product>();
        }

        public string Name { get; set; }

        public string Description { get; set; }

        public Guid Id { get; set; }

        public DeleteStatus Deletedstatus { get; set; }

        public Categorytype Categorytype { get; set; }

        public IList<Product> Products { get; set; }
    }

    public enum DeleteStatus
    {
        Working = 1,
        Recycled = 2,
        Deleted = 3
    }

    public enum Categorytype
    {
        General = 1,
        Special = 2
    }
}