using Sehin_versión2._0.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sehin_versión2._0.Controllers
{
    public class CalendarioController : Controller
    {
        // GET: Calendario
        public ActionResult Index()
        {
            return View();
        }


        public JsonResult GetEvents()
        {
            using (ModeloContainer dc = new ModeloContainer())
            {
                var events = dc.OrdenTrabajoSet.ToList();
                return new JsonResult { Data = events, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            }
        }
    }
}