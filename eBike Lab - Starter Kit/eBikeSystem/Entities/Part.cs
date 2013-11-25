using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eBikeSystem.Entities
{
    class Part
    {
        public int PartNumber { get; set;}
        public string Description { get; set;}
        public decimal PurchasePrice {get;set;}
        public decimal SellingPrice { get;set;}
        public int InStock {get;set;}
        public int ReorderLevel {get;set;}
        public char CategoryType {get;set;}
        public char Refundable { get; set; }
    }
}
