//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Sehin_versión2._0.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PlanesFormacion
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public int CursosId { get; set; }
        public int TrabajadoresId { get; set; }
        public string Fecha { get; set; }
        public string Estado { get; set; }
    
        public virtual Cursos Cursos { get; set; }
        public virtual Trabajadores Trabajadores { get; set; }
    }
}
