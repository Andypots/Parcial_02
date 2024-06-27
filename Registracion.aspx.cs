using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_02
{
    public partial class Registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
               
                //grabo session con el nombre y apellido
                Session["nombreCompleto"] = TextBox2.Text + ", " + TextBox1.Text;

                Response.Redirect("GestionDeArchivos.aspx");
            }
        }
    }
}