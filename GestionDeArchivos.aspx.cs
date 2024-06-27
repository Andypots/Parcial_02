using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace Parcial_02
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombreCompleto"]==null)
            {
                Response.Redirect("Registracion.aspx");
            }
            else
            {
                Label3.Text = Session["nombreCompleto"].ToString();
                //Verifico si existe carpeta
                string carpeta = Server.MapPath(".") + "/" + Label3.Text;

                if (!Directory.Exists(carpeta))
                {
                    Directory.CreateDirectory(carpeta);
                }
                CargarGrilla();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string carpeta = Server.MapPath(".") + "/" + Label3.Text;
            string path = $"{Server.MapPath(".")}/" + Label3.Text;
            string result = string.Empty;


            foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
            {
                if (archivo.ContentLength >= 10000)
                {
                    result += $"El archivo {archivo.FileName} supera el kb - ";
                }
                else
                {
                    if (File.Exists($"{path}/{archivo.FileName}"))
                    {
                        result += $"El archivo {archivo.FileName} ya existe - ";
                    }
                    else
                    {
                        if (FileUpload1.HasFile)
                        {
                            FileUpload1.SaveAs($"{path}/{archivo.FileName}");
                            Label6.Text = "El archivo se subió con éxito";
                        }
                        else
                        {
                            Label6.Text = "Error: No se ha seleccionado ningún archivo.";
                        }
                    }
                }
            }
            CargarGrilla();
        }
        
        public void CargarGrilla()
        {
            string path = $"{Server.MapPath(".")}/" + Label3.Text;

            if (Directory.Exists(path))
            {
                string[] files = Directory.GetFiles(path);
                List<Archivo> fileList = new List<Archivo>();
                foreach (string file in files)
                {
                    var fileNew = new Archivo(Path.GetFileName(file), file);
                    fileList.Add(fileNew);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Descargar")
            {
                GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = registro.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                // Cambiar los encabezados de las columnas
                e.Row.Cells[1].Text = "Nombre del Archivo";
                e.Row.Cells[2].Text = "Ubicación";
                
            }
        }
    }
}