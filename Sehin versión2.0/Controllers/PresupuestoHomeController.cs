using Sehin_versión2._0.Models;
using Sehin_versión2._0.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sehin_versión2._0.Controllers
{
    public class PresupuestoHomeController : Controller
    {
        // GET: PresupuestoHome
        ModeloContainer db = new ModeloContainer();

        public ActionResult Index()
        {
            List<Presupuesto> OrderAndCustomerList = db.PresupuestoSet.ToList();
                return View(OrderAndCustomerList);
        }

        //Post action for Save data to database
        [HttpPost]
        public ActionResult SaveOrder(string name, String address, DetallePresupuesto[] itemspresupuesto)
        {
            string result = "Error! Order Is Not Complete!";
            if (name != null && address != null && itemspresupuesto != null)
            {
                var cutomerId = Guid.NewGuid();
                Clientes cliente = new Clientes();
                Presupuesto p = new Presupuesto();
                p.ClientesId = 2;
                p.Fecha = DateTime.Now;
                p.fechavencimiento = DateTime.Now.AddDays(10);
                db.PresupuestoSet.Add(p);

                foreach (var item in itemspresupuesto)
                {
                    var orderId = Guid.NewGuid();
                    DetallePresupuesto O = new DetallePresupuesto();
                    //O.OrderId = orderId;
                    O.descripcion = item.descripcion;
                    O.cantidad = item.cantidad;
                    O.preciounitario = item.preciounitario;
                    O.Monto = item.Monto;
                    O.PresupuestoId = p.Id;
                    O.ServicioId = 1;
                    db.DetallePresupuestoSet.Add(O);
                }
                db.SaveChanges();
                result = "Success! Order Is Complete!";
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }

    }
}