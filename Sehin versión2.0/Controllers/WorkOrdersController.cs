using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Sehin_versión2._0.Models;
using Sehin_versión2._0.ViewModels;

namespace Sehin_versión2._0.Controllers
{
    public class WorkOrdersController : Controller
    {
        private ModeloContainer db = new ModeloContainer();

        // GET: WorkOrders
        public ActionResult Index()
        {
            var workOrderSet = db.WorkOrderSet.Include(w => w.Técnicos);
            return View(workOrderSet.ToList());
        }

        // GET: WorkOrders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WorkOrder workOrder = db.WorkOrderSet.Find(id);
            if (workOrder == null)
            {
                return HttpNotFound();
            }
            return View(workOrder);
        }

        // GET: WorkOrders/Create
        public ActionResult Create()
        {
            ViewBag.TécnicosLegajo = new SelectList(db.TécnicosSet, "Legajo", "Nombre");
            return View();
        }

        // POST: WorkOrders/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,titulo,descripcion,fecha,fechavencimiento,programacion,prioridad,TécnicosLegajo,finalizada,fechafinalizada")] WorkOrder workOrder)
        {
            if (ModelState.IsValid)
            {
                db.WorkOrderSet.Add(workOrder);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.TécnicosLegajo = new SelectList(db.TécnicosSet, "Legajo", "Nombre", workOrder.TécnicosLegajo);
            return View(workOrder);
        }

        //Esto lo agregué yo para que liste las fotos al editar la WORK ORDER
        public ActionResult _List()
        {
            ModeloContainer db = new ModeloContainer();
            var list = db.FotoSet.OrderBy(x => x.nroorden)
                        .Select(x => new ImageList
                        {
                            Id = x.Id,
                            IsActive = x.activa,
                            OrderNo = x.nroorden,
                            WebImageId = x.WebImageId,
                            Title = x.descripcion
                        }).ToList();

            return PartialView(list);
        }

        // GET: WorkOrders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WorkOrder workOrder = db.WorkOrderSet.Find(id);
            if (workOrder == null)
            {
                return HttpNotFound();
            }
            ViewBag.TécnicosLegajo = new SelectList(db.TécnicosSet, "Legajo", "Nombre", workOrder.TécnicosLegajo);
            return View(workOrder);
        }

        // POST: WorkOrders/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,titulo,descripcion,fecha,fechavencimiento,programacion,prioridad,TécnicosLegajo,finalizada,fechafinalizada")] WorkOrder workOrder)
        {
            if (ModelState.IsValid)
            {
                db.Entry(workOrder).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.TécnicosLegajo = new SelectList(db.TécnicosSet, "Legajo", "Nombre", workOrder.TécnicosLegajo);
            return View(workOrder);
        }

        // GET: WorkOrders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WorkOrder workOrder = db.WorkOrderSet.Find(id);
            if (workOrder == null)
            {
                return HttpNotFound();
            }
            return View(workOrder);
        }

        // POST: WorkOrders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            WorkOrder workOrder = db.WorkOrderSet.Find(id);
            db.WorkOrderSet.Remove(workOrder);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
