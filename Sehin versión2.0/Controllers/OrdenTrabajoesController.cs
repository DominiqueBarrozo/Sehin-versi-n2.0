using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Sehin_versión2._0.Models;

namespace Sehin_versión2._0.Controllers
{
    public class OrdenTrabajoesController : Controller
    {
        private ModeloContainer db = new ModeloContainer();

        // GET: OrdenTrabajoes
        public ActionResult Index()
        {
            return View(db.OrdenTrabajoSet.ToList());
        }

        // GET: OrdenTrabajoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OrdenTrabajo ordenTrabajo = db.OrdenTrabajoSet.Find(id);
            if (ordenTrabajo == null)
            {
                return HttpNotFound();
            }
            return View(ordenTrabajo);
        }

        // GET: OrdenTrabajoes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: OrdenTrabajoes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,descripcion,descripciondetallada,fechainicio,fechafin,estado,finalizado,prioridad,requierefirma,fechavencimiento,diasprogramacion,fechafinprogracion")] OrdenTrabajo ordenTrabajo)
        {
            if (ModelState.IsValid)
            {
                db.OrdenTrabajoSet.Add(ordenTrabajo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ordenTrabajo);
        }

        // GET: OrdenTrabajoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OrdenTrabajo ordenTrabajo = db.OrdenTrabajoSet.Find(id);
            if (ordenTrabajo == null)
            {
                return HttpNotFound();
            }
            return View(ordenTrabajo);
        }

        // POST: OrdenTrabajoes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,descripcion,descripciondetallada,fechainicio,fechafin,estado,finalizado,prioridad,requierefirma,fechavencimiento,diasprogramacion,fechafinprogracion")] OrdenTrabajo ordenTrabajo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ordenTrabajo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ordenTrabajo);
        }

        // GET: OrdenTrabajoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OrdenTrabajo ordenTrabajo = db.OrdenTrabajoSet.Find(id);
            if (ordenTrabajo == null)
            {
                return HttpNotFound();
            }
            return View(ordenTrabajo);
        }

        // POST: OrdenTrabajoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            OrdenTrabajo ordenTrabajo = db.OrdenTrabajoSet.Find(id);
            db.OrdenTrabajoSet.Remove(ordenTrabajo);
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
