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
                //grabo cookie pass
                HttpCookie cookie1 = new HttpCookie("pass", TextBox4.Text);
                cookie1.Expires = new DateTime(2024, 12, 31);
                Response.Cookies.Add(cookie1);

                //grabo session con el nombre de usuario
                Session["usuario"] = TextBox1.Text;

                Response.Redirect("GestionDeArchivos.aspx");
            }
        }
    }
}