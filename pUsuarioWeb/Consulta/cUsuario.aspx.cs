using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq.Expressions;
using Entidades;
using BLL;

namespace pUsuarioWeb.Consulta
{
    public partial class cUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarBtton_Click(object sender, EventArgs e)
        {
            Expression<Func<Usuario, bool>> filtro = m => true;
            RepositorioBase<Usuario> repo = new RepositorioBase<Usuario>();

            int id;
            switch(FiltroDropDownList.SelectedIndex)
            {
                case 0:
                    repo.GetList(d=>true);
                    break;
                case 1: id = Utilidades.Utils.ToInt(CriterioTextbox.Text);
                    break;
                case 2: 
                        filtro = d => d.Nombre.Contains(CriterioTextbox.Text);
                    break;
                case 3:
                    filtro = d => d.Apellido.Contains(CriterioTextbox.Text);
                    break;
                case 4:
                    filtro = d => d.Correo.Contains(CriterioTextbox.Text);
                    break;

                   

            }
            uGridView.DataSource = repo.GetList(filtro);
            uGridView.DataBind();

        }
    }
}