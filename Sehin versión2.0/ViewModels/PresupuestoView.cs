using Sehin_versión2._0.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Sehin_versión2._0.ViewModels
{
    public class PresupuestoView
    {
        public int numero { get; set; }
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/mm/aaaa}",ApplyFormatInEditMode = true)]
        public DateTime fecha { get; set; }
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/mm/aaaa}", ApplyFormatInEditMode = true)]
        public DateTime fechaVencimiento { get; set; }
        public Clientes Cliente { get; set; }
        public Técnicos Tecnico { get; set; }
        public PresupuestoServicio Servicio { get; set; }
        public List<PresupuestoServicio> Servicios { get; set; }
    }
}