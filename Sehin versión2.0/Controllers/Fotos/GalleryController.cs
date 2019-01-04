using Sehin_versión2._0.Models;
using Sehin_versión2._0.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ImageGallery.Controllers
{
    public class GalleryController : Controller
    {
        // GET: Gallery
        public ActionResult Index()
        {
            return View();
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


    }
}