using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        [Key]
        public int UsuarioId { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Correo { get; set; }
        public string ConfirCorreo { get; set; }
        public string Contrasena { get; set; }
        public string ConfirContrasena { get; set; }

        public Usuario()
        {
            UsuarioId = 0;
            Nombre = string.Empty;
            Apellido = string.Empty;
            Correo = string.Empty;
            ConfirCorreo = string.Empty;
            Contrasena = string.Empty;
            ConfirContrasena = string.Empty;
        }
       
    }
}
