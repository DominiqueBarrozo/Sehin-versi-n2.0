using Sehin_versión2._0.Models;
using Sehin_versión2._0.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ImageGallery.Controllers
{
    public class GalleryAdminController : Controller
    {
        // GET: GalleryAdmin
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Create()
        {
            ImageEditorViewModel vm = new ImageEditorViewModel();
            ViewBag.Action = "Create";
            return PartialView(vm);
        }

        [HttpPost]
        public ActionResult Create(ImageEditorViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    ModeloContainer db = new ModeloContainer(); 

                    var fileModel = WebFileViewModel.getEntityModel(model.FileImage);
                    db.WebFiles.Add(fileModel);
                    db.SaveChanges();

                    var entity = ImageEditorViewModel.GetEnityModel(model);                  
                    entity.WebImageId = fileModel.Id;
                    entity.activa = true;
                    entity.nroorden = db.FotoSet.Count() > 0 ? db.FotoSet.Max(x=> x.nroorden) + 1 : 1;
                    db.FotoSet.Add(entity);
                    db.SaveChanges();

                    return Json(new { success = true, Caption = model.Caption });
                }

                return Json(new { success = false, ValidationMessage = "Please check validation messages" });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, ExceptionMessage = "Some error here" });
            }
        }

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
        

        [HttpPost]
        public JsonResult ChangeActive(int Id, bool status)
        {
            ModeloContainer db = new ModeloContainer();
            var entity = db.FotoSet.Find(Id);
            entity.activa = status;
            db.SaveChanges();

            return Json(entity.descripcion);
        }
    }
}