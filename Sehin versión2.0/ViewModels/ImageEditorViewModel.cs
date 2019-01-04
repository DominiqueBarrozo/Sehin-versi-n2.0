using Sehin_versión2._0.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Sehin_versión2._0.ViewModels
{
    public class ImageEditorViewModel
    {
        public int Id { get; set; }
        [Required]
        public string Caption { get; set; }

        [Required]         
        public HttpPostedFileBase FileImage { get; set; }

        internal static Foto GetEnityModel(ImageEditorViewModel model)
        {
            return new Foto
            {
                activa = true,
                descripcion = model.Caption, 
                nroorden = 0,
            };
        }

    }

    public class ImageList
    {
        public int Id { get; set; }
        public bool IsActive { get; set; }
        public int? OrderNo { get; set; }
        public string Title { get; set; }
        public int WebImageId { get; set; }
    }
}