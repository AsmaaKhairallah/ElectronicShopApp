using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace ElectronicShopApp.Models
{
    public class Products
    {
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public decimal Price { get; set; }

        public string Image { get; set; }

        [Display(Name = "Product Color")]
        public string ProductColor { get; set; }

        [Required]
        [Display(Name = "Available")]
        public bool IsAvailable { get; set; }
        

        [Display(Name = "Category Type")]
        [Required]
        public int CategoryTypeId { get; set; }


        [ForeignKey("CategoryTypeId")]
        public virtual CategoryType CategoryType { get; set; }


        [Display(Name = "Special Tag")]
        [Required]
        public int SpecialTagId { get; set; }


        [ForeignKey("SpecialTagId")]
        public virtual SpecialTag SpecialTag { get; set; }

        [Display(Name = "Discount for New Regstered User")]
        [DisplayFormat( DataFormatString = "{0:P2}")]
        public decimal? Discount_NewRegistered { get; set; }


        [Display(Name = "Discount for Picking Many Item In This Product")]
        [DisplayFormat( DataFormatString = "{0:P2}")]
        public decimal? Discount_PickManyItemInSameProduct { get; set; }
    }
}
