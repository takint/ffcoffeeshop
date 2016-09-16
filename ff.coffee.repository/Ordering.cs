//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ff.coffee.repository
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ordering
    {
        public int ID { get; set; }
        public Nullable<System.DateTime> TimeIn { get; set; }
        public Nullable<int> TableID { get; set; }
        public Nullable<int> ProductID { get; set; }
        public Nullable<int> Quantity { get; set; }
        public Nullable<bool> ChefConfirm { get; set; }
        public Nullable<bool> ChefDone { get; set; }
        public Nullable<bool> IsNew { get; set; }
        public Nullable<bool> IsEdit { get; set; }
        public string StaffOrder { get; set; }
        public string StaffConfirm { get; set; }
        public string StaffDone { get; set; }
        public Nullable<System.DateTime> ConfirmTime { get; set; }
        public Nullable<System.DateTime> DoneTime { get; set; }
        public Nullable<bool> Paid { get; set; }
        public string Notes { get; set; }
    
        public virtual CoffeeTable CoffeeTable { get; set; }
        public virtual Product Product { get; set; }
    }
}