//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class CouponOrder
    {
        public int Id { get; set; }
        public string serialKey { get; set; }
        public System.DateTime date { get; set; }
        public string recipt { get; set; }
        public bool isUsed { get; set; }
        public string creditApproval { get; set; }
        public double rank { get; set; }
        public string QR { get; set; }
        public int quantity { get; set; }
    
        public virtual Coupon Coupons { get; set; }
        public virtual Costumer Costumer { get; set; }
    }
}
