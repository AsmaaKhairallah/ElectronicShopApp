using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ElectronicShopApp.Models
{
    public class OrderDetails
    {
        public int Id { get; set; }


        [Display(Name = "Order")]
        public int OrderId { get; set; }


        [Display(Name = "Product")]
        public int PorductId { get; set; }



        [ForeignKey("OrderId")]
        public Order Order { get; set; }

        [ForeignKey("PorductId")]
        public Products Product { get; set; }

        [Display(Name = "Discount for New Regstered User")]
        [DisplayFormat(DataFormatString = "{0:P2}")]
        public decimal? Discount_NewRegistered { get; set; }


        [Display(Name = "Discount for Picking Many Item In This Product")]
        [DisplayFormat(DataFormatString = "{0:P2}")]
        public decimal? Discount_PickManyItemInSameProduct { get; set; }

        [Required]
        public decimal Price { get; set; }


    }
}
