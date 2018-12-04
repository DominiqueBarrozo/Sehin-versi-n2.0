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
            var ordenTrabajoSet = db.OrdenTrabajoSet.Include(o => o.Puestos).Include(o => o.Trabajadores).Include(o => o.Máquinas).Include(o => o.Riesgos).Include(o => o.MedidasPreventivas).Include(o => o.Técnicos).Include(o => o.Establecimientos).Include(o => o.Servicio);
            return View(ordenTrabajoSet.ToList());
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
            ViewBag.PuestosId = new SelectList(db.PuestosSet, "Id", "Id");
            ViewBag.TrabajadoresId = new SelectList(db.TrabajadoresSet, "Id", "Id");
            ViewBag.MáquinasId = new SelectList(db.MáquinasSet, "Id", "Descripcion");
            ViewBag.RiesgosId = new SelectList(db.RiesgosSet, "Id", "Factor");
            ViewBag.MedidasPreventivasId = new SelectList(db.MedidasPreventivasSet, "Id", "Id");
            ViewBag.TécnicosLegajo = new SelectList(db.TécnicosSet, "Legajo", "Nombre");
            ViewBag.EstablecimientosId = new SelectList(db.EstablecimientosSet, "Id", "Nombre");
            ViewBag.ServicioId = new SelectList(db.ServicioSet, "Id", "nombre");
            return View();
        }

        // POST: OrdenTrabajoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,descripcion,descripciondetallada,fechainicio,fechafin,estado,finalizado,prioridad,requierefirma,fechavencimiento,diasprogramacion,fechafinprogracion,EstablecimientosId,ServicioId,PuestosId,TrabajadoresId,MáquinasId,RiesgosId,MedidasPreventivasId,TécnicosLegajo")] OrdenTrabajo ordenTrabajo)
        {
            if (ModelState.IsValid)
            {
                db.OrdenTrabajoSet.Add(ordenTrabajo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PuestosId = new SelectList(db.PuestosSet, "Id", "Id", ordenTrabajo.PuestosId);
            ViewBag.TrabajadoresId = new SelectList(db.TrabajadoresSet, "Id", "Id", ordenTrabajo.TrabajadoresId);
            ViewBag.MáquinasId = new SelectList(db.MáquinasSet, "Id", "Descripcion", ordenTrabajo.MáquinasId);
            ViewBag.RiesgosId = new SelectList(db.RiesgosSet, "Id", "Factor", ordenTrabajo.RiesgosId);
            ViewBag.MedidasPreventivasId = new SelectList(db.MedidasPreventivasSet, "Id", "Id", ordenTrabajo.MedidasPreventivasId);
            ViewBag.TécnicosLegajo = new SelectList(db.TécnicosSet, "Legajo", "Nombre", ordenTrabajo.TécnicosLegajo);
            ViewBag.EstablecimientosId = new SelectList(db.EstablecimientosSet, "Id", "Nombre", ordenTrabajo.EstablecimientosId);
            ViewBag.ServicioId = new SelectList(db.ServicioSet, "Id", "nombre", ordenTrabajo.ServicioId);
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
            ViewBag.PuestosId = new SelectList(db.PuestosSet, "Id", "Id", ordenTrabajo.PuestosId);
            ViewBag.TrabajadoresId = new SelectList(db.TrabajadoresSet, "Id", "Id", ordenTrabajo.TrabajadoresId);
            ViewBag.MáquinasId = new SelectList(db.MáquinasSet, "Id", "Descripcion", ordenTrabajo.MáquinasId);
            ViewBag.RiesgosId = new SelectList(db.RiesgosSet, "Id", "Factor", ordenTrabajo.RiesgosId);
            ViewBag.MedidasPreventivasId = new SelectList(db.MedidasPreventivasSet, "Id", "Id", ordenTrabajo.MedidasPreventivasId);
            ViewBag.TécnicosLegajo = new SelectList(db.TécnicosSet, "Legajo", "Nombre", ordenTrabajo.TécnicosLegajo);
            ViewBag.EstablecimientosId = new SelectList(db.EstablecimientosSet, "Id", "Nombre", ordenTrabajo.EstablecimientosId);
            ViewBag.ServicioId = new SelectList(db.ServicioSet, "Id", "nombre", ordenTrabajo.ServicioId);
            return View(ordenTrabajo);
        }

        // POST: OrdenTrabajoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,descripcion,descripciondetallada,fechainicio,fechafin,estado,finalizado,prioridad,requierefirma,fechavencimiento,diasprogramacion,fechafinprogracion,EstablecimientosId,ServicioId,PuestosId,TrabajadoresId,MáquinasId,RiesgosId,MedidasPreventivasId,TécnicosLegajo")] OrdenTrabajo ordenTrabajo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ordenTrabajo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PuestosId = new SelectList(db.PuestosSet, "Id", "Id", ordenTrabajo.PuestosId);
            ViewBag.TrabajadoresId = new SelectList(db.TrabajadoresSet, "Id", "Id", ordenTrabajo.TrabajadoresId);
            ViewBag.MáquinasId = new SelectList(db.MáquinasSet, "Id", "Descripcion", ordenTrabajo.MáquinasId);
            ViewBag.RiesgosId = new SelectList(db.RiesgosSet, "Id", "Factor", ordenTrabajo.RiesgosId);
            ViewBag.MedidasPreventivasId = new SelectList(db.MedidasPreventivasSet, "Id", "Id", ordenTrabajo.MedidasPreventivasId);
            ViewBag.TécnicosLegajo = new SelectList(db.TécnicosSet, "Legajo", "Nombre", ordenTrabajo.TécnicosLegajo);
            ViewBag.EstablecimientosId = new SelectList(db.EstablecimientosSet, "Id", "Nombre", ordenTrabajo.EstablecimientosId);
            ViewBag.ServicioId = new SelectList(db.ServicioSet, "Id", "nombre", ordenTrabajo.ServicioId);
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
