using ElectronicShopApp.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace ElectronicShopApp.Areas.Admin.Controllers
{

    [Authorize(Roles = "Super user")]
    [Area("Admin")]
    public class RequestedOrderController : Controller
    {
        ApplicationDbContext _db;
        public RequestedOrderController( ApplicationDbContext db)
        {
            _db = db;
}


        public IActionResult Index()
        {
            var OrderList = _db.Orders.AsQueryable();
            return View(OrderList);
        }
    }
}
