using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient; 

namespace Parcial_02
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuario"].ToString() == "----------" )
            {
                Response.Redirect("Registracion.aspx");
            }
            else
            {
                Label3.Text = Session["usuario"].ToString();
            }
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string carpeta = Server.MapPath(".") + "/" + Label3.Text;

            if (!Directory.Exists(carpeta))
            {
                Directory.CreateDirectory(carpeta);
            }
            if (File.Exists(carpeta + "/" + FileUpload1.FileName))
            {
                Label6.Text = "El archivo ya existe en el directorio del usuario";
            }
            else
            {
                //Inserto la imagen en tabla

                SqlDataSource1.InsertParameters["usuario"].DefaultValue = Label3.Text;
                SqlDataSource1.InsertParameters["archivo"].DefaultValue = FileUpload1.FileName;
                SqlDataSource1.Insert();

                //Label7.Text = carpeta; //Control de ruta
                FileUpload1.SaveAs(carpeta + "/" + FileUpload1.FileName);
                Label6.Text = "Archivo subido";
            }

        }
    }
}