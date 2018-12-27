using Sehin_versión2._0.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sehin_versión2._0.ViewModels
{
    public class PresupuestoViewModelSegundo
    {
        public int numeroPresupuesto { get; set; }
        public DateTime fechaPresupuesto { get; set; }
        public string DescripcionPresupuesto { get; set; }
        public List<DetallePresupuesto> DetallePresupuesto { get; set; }
    }
}