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
            ModeloContainer dc = new ModeloContainer();
            {
                var events = dc.OrdenTrabajoSet.ToList();
                return new JsonResult { Data = events, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            }
        }
        public JsonResult DeleteEvent(int eventID)
        {
            var status = false;
            using (ModeloContainer dc = new ModeloContainer())
            {
                var v = dc.OrdenTrabajoSet.Where(a => a.Id == eventID).FirstOrDefault();
                if (v != null)
                {
                    dc.OrdenTrabajoSet.Remove(v);
                    dc.SaveChanges();
                    status = true;
                }
            }
            return new JsonResult { Data = new { status = status } };
        }
        [HttpPost]
        public JsonResult SaveEvent(OrdenTrabajo e)
        {
            var status = false;
            using (ModeloContainer dc = new ModeloContainer())
            {
                if (e.Id > 0)
                {
                    //Update the event
                    var v = dc.OrdenTrabajoSet.Where(a => a.Id == e.Id).FirstOrDefault();
                    if (v != null)
                    {
                        v.descripcion = e.descripcion;
                        v.fechainicio = e.fechainicio;
                        v.fechafin = e.fechafin;
                        v.estado = e.estado;
                        v.descripciondetallada = e.descripciondetallada;
                        v.fechavencimiento = e.fechavencimiento;
                        v.fechafinprogracion = e.fechafinprogracion;
                        v.finalizado = e.finalizado;
                        v.requierefirma = e.requierefirma;
                        v.ServicioId = e.ServicioId;
                        v.prioridad = e.prioridad;
                    }
                }
                else
                {
                    dc.OrdenTrabajoSet.Add(e);
                }
                dc.SaveChanges();
                status = true;
            }
            return new JsonResult { Data = new { status = status } };
        }
    }
}