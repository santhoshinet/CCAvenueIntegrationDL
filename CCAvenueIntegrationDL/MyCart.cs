
using Telerik.OpenAccess;

namespace CCAvenueIntegrationDL
{
    [Persistent]
    public class MyCart
    {
        public int Quantity { get; set; }
        public Product Product { get; set; }
    }
}
