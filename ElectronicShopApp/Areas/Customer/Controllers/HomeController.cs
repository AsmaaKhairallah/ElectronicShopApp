using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ElectronicShopApp.Data;
using ElectronicShopApp.Models;
using ElectronicShopApp.Utility;
using X.PagedList;
using Microsoft.AspNetCore.Http;

namespace ElectronicShopApp.Areas.Admin.Controllers
{
    [Authorize(Roles = "Super user ,User")]
    [Area("Customer")]
    
    public class HomeController : Controller
    {
        private ApplicationDbContext _db;

        public HomeController(ApplicationDbContext db)
        {
            _db = db;
        }

        [AllowAnonymous]

        public IActionResult Index(int? page)
        {
            return View(_db.Products.Include(c=>c.CategoryType).Include(c=>c.SpecialTag).ToList().ToPagedList(page??1,5));
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        //GET product detail acation method

        [AllowAnonymous]
        public ActionResult Detail(int? id)
        {
            
            if(id==null)
            {
                return NotFound();
            }

            var product = _db.Products.Include(c => c.CategoryType).FirstOrDefault(c => c.Id == id);
            if(product==null)
            {
                return NotFound();
            }
            return View(product);
        }

        //POST product detail acation method
        [HttpPost]
        [ActionName("Detail")]
        public ActionResult ProductDetail(int? id)
        {
            int quantity = 1;
            string quantity_str = Request.Form["Quantity"].ToString();
            List<Products> products = new List<Products>();

            
           
            if (id == null)
            {
                return NotFound();
            }

            var product = _db.Products.Include(c => c.CategoryType).FirstOrDefault(c => c.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            products = HttpContext.Session.Get<List<Products>>("products");
            if(products==null)
            {
                products=new List<Products>();
            }

            if (!string.IsNullOrEmpty(quantity_str))
            {
                quantity = int.Parse(quantity_str);

                for (int i = 1; i <= quantity; i++) {
                    products.Add(product);

                }

            }
            HttpContext.Session.Set("products", products);
            return RedirectToAction(nameof(Index));
        }
        //GET Remove action methdo
        [ActionName("Remove")]
        public IActionResult RemoveToCart(int? id)
        {
            List<Products> products = HttpContext.Session.Get<List<Products>>("products");
            if (products != null)
            {
                var product = products.FirstOrDefault(c => c.Id == id);
                if (product != null)
                {
                    products.Remove(product);
                    HttpContext.Session.Set("products", products);
                }
            }
            return RedirectToAction(nameof(Index));
        }

        [HttpPost]

        public IActionResult Remove(int? id)
        {
            List<Products> products = HttpContext.Session.Get<List<Products>>("products");
            if(products!=null)
            {
                var RemovedProducts = products.Where(c => c.Id == id).ToList();             
                    if (RemovedProducts != null)
                    {
                        foreach (var p in RemovedProducts)
                        {
                            products.Remove(p);
                        }
                    }
                    
                  HttpContext.Session.Set("products", products);
                
            }
            return RedirectToAction(nameof(Index));
        }

        //GET product Cart action method

        public IActionResult Cart()
        {
            List<Products> products = HttpContext.Session.Get<List<Products>>("products");
            if(products==null)
            {
                products=new List<Products>();
            }
            ViewBag.TotaPrice = PopulatePrice();
            return View(products);
        }


        private decimal? PopulatePrice()
        {
            decimal? price = 0;

            List<Products> products = HttpContext.Session.Get<List<Products>>("products");

            if (products != null)
            {
                var lst = products.GroupBy(
                    p => new
                    {
                        Product_Id = p.Id,
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

                }
            }
            return price;
        }

    }
}
