using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace pUsuarioWeb.Registro
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        private Usuario LlenaClase()
        {
            Usuario usuario = new Usuario();
            usuario.UsuarioId = ToInt(IdTextbox.Text);
            usuario.Nombre = NombreTextbox.Text;
            usuario.Apellido = ApellidoTextbox.Text;
            usuario.Correo = CorreoTextBox.Text;
            usuario.ConfirCorreo = CcorreoTextBox.Text;
            usuario.Contrasena = ContrasenaTextBox.Text;
            usuario.ConfirContrasena = CcontrasenaTextBox.Text;
            
            return usuario;
        }


        protected void GuardarBtton_Click(object sender, EventArgs e)
        {
            bool paso = false;
            Usuario usuario = new Usuario();
            RepositorioBase<Usuario> repo = new RepositorioBase<Usuario>();

            usuario = LlenaClase();
            if (IdTextbox != null)
                paso = repo.Guardar(usuario);
            else
                paso = repo.Modificar(usuario);
            if(paso)
            {
                Response.Write("<script> text('No se guardo')</script>");
                Limpiar();
                

            }
            else
            {
               
            }

        }


        protected void NuevoBtton_Click(object sender, EventArgs e)
        {
            
            
        }
        private void Limpiar()
        {
            IdTextbox.Text = "0";
            NombreTextbox.Text = "";
            ApellidoTextbox.Text = "";
            CorreoTextBox.Text = "";
            CcorreoTextBox.Text = "";
            CcontrasenaTextBox.Text = "";
            ContrasenaTextBox.Text = "";
        }
        protected void BuscarBtton_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuario> repo = new RepositorioBase<Usuario>();
            Usuario usuario = new Usuario();
            usuario = repo.Buscar(ToInt(IdTextbox.Text));

            if(usuario !=null)
            {
                NombreTextbox.Text = usuario.Nombre;
                ApellidoTextbox.Text = usuario.Apellido;
                CorreoTextBox.Text = usuario.Correo;
                CcorreoTextBox.Text = usuario.ConfirCorreo;
                ContrasenaTextBox.Text = usuario.Contrasena;
                CcontrasenaTextBox.Text = usuario.ConfirContrasena;
            }
            else
            {
                Response.Write("<script> alert('No existe')</script>");
            }
        }
        private int ToInt(object valor)
        {
            int retorno = 0;
            int.TryParse(valor.ToString(), out retorno);

            return retorno;
        }

        protected void EliminarBtton_Click(object sender, EventArgs e)
        {
            int id = ToInt(IdTextbox.Text);
            RepositorioBase<Usuario> repo = new RepositorioBase<Usuario>();

            if(repo.Eliminar(id))
            {
                Response.Write("<script>text('Eliminado')</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script> alert('No existe')</script>");
            }
        }

        protected void NuevoBtton_Click1(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}