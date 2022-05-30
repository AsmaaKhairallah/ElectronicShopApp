using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ElectronicShopApp.Models
{
    public class CategoryType
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Category Type")]
        public string CategoryName { get; set; }

    }
}
