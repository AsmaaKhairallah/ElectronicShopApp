using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ElectronicShopApp.Data;
using ElectronicShopApp.Models;
using ElectronicShopApp.Utility;
using Microsoft.AspNetCore.Authorization;

namespace ElectronicShopApp.Areas.Admin.Controllers
{
    [Authorize(Roles = "Super user ,User")] 
    [Area("Customer")]
    public class OrderController : Controller
    {
        private ApplicationDbContext _db;

        public OrderController(ApplicationDbContext db)
        {
            _db = db;
        }


        //GET Checkout actioin method

        public IActionResult Checkout()
        {
            return View();
        }

        //POST Checkout action method

        [HttpPost]
        [ValidateAntiForgeryToken]

        public async Task<IActionResult> Checkout(Order anOrder)
        {
            List<Products> products = HttpContext.Session.Get<List<Products>>("products");
            if (products != null && products.Count()>0)
            {
                foreach (var product in products)
                {
                    OrderDetails orderDetails = new OrderDetails();
                    orderDetails.PorductId = product.Id;
                    anOrder.OrderDetails.Add(orderDetails);
                }




                anOrder.OrderNo = GetOrderNo();
                PopulatePrice(anOrder);

                _db.Orders.Add(anOrder);
                try
                {
                    await _db.SaveChangesAsync();
                }
                catch (Exception ex)
                {

                    TempData["delete"] = "Error occur while order!";
                    return View();
                }

                TempData["save"] = "Order is successfully Added!";

                HttpContext.Session.Set("products", new List<Products>());
                
                return Redirect(Url.Content("~/"));
            }
            else {

                TempData["delete"] = "Pick Products Fist Before ordering!";
                return View();
            }
        }



        public string GetOrderNo()
        {
            int rowCount = _db.Orders.ToList().Count() + 1;
            return rowCount.ToString("000");
        }


        // here is the equation for maniplating the total price
        private void PopulatePrice(Order order)
        {
            decimal? price = 0;
            List<Products> products = HttpContext.Session.Get<List<Products>>("products");
          
                var lst = products.GroupBy(
                p => new
                {
                    Product_Id= p.Id,
                    price = p.Price,
                    disc_newReg = p.Discount_NewRegistered == null ? 0 : p.Discount_NewRegistered,
                    disc_manyItem = p.Discount_PickManyItemInSameProduct == null ? 0 : p.Discount_PickManyItemInSameProduct,

                })
               .Select(g => new
               {
                   price = g.Key.price,
                   Product_Id = g.Key.Product_Id,
                   org_disc_newReg = g.Key.disc_manyItem,
                   org_disc_manyItem = g.Key.disc_manyItem,
                   ProductCount = g.Count(),
               }).ToList();



            foreach (var p in lst)
            {

                if (p.ProductCount >= 2)
                {

                    price += ((p.price - (p.org_disc_manyItem * p.price)) * p.ProductCount);


                }
                else if (p.ProductCount == 1)
                {
                    price += ((p.price - (p.org_disc_manyItem * p.price)) * p.ProductCount);

                }
                int pNo = p.ProductCount;

                var orDetail = order.OrderDetails.Where(o => o.PorductId == p.Product_Id);

                foreach (var oD in orDetail) {
                    oD.Discount_PickManyItemInSameProduct = p.org_disc_manyItem;
                    oD.Discount_NewRegistered = p.org_disc_newReg;
                }


            }

            order.Price = price;
        }
    }
}
