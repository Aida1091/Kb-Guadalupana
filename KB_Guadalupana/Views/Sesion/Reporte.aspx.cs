﻿using System;
using KB_Guadalupana.Controllers;
using KB_Guadalupana.Models;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KB_Guadalupana.Views.Sesion
{
    public partial class Reporte : System.Web.UI.Page
    {
        Logica logic = new Logica();
        Conexion conn = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                llenargridviewreporte();
            }

           
        }

        public void llenargridviewreporte()
        {
            try
            {
                string QueryString = "SELECT gen_usuarionombre, codepinformaciongeneralcif FROM gen_usuario INNER JOIN ep_control ON gen_usuario.codgenusuario = ep_control.codgenusuario where codepinformaciongeneralcif != 'NUll'";
                // "ON a.codeptipotelefono=b.codeptipotelefono WHERE codepinformaciongeneralcif='"+cifactual+"';";
                MySqlConnection conect = conn.conectar();
                MySqlDataAdapter myCommand = new MySqlDataAdapter(QueryString, conect);
                DataTable ds3 = new DataTable();
                myCommand.Fill(ds3);
                GridViewReporte.DataSource = ds3;
                GridViewReporte.DataBind();
                conn.desconexion(conect);
            }
            catch
            {
            }
            finally { conn.desconectar(); }
        }

        protected void iniciarsesion_Click(object sender, EventArgs e)
        {
            Session["IDReporte"] = RCif.Value;

            string nombre;
            string id;
            nombre = Session["IDReporte"].ToString();

            //ScriptManager.RegisterStartupScript(this, GetType(), "error", "alert('"+nombre+"');", true);

            MySqlDataReader mostrar = logic.consultarCif(nombre);
            try
            {
                if (mostrar.Read())
                {
                    id = Convert.ToString(mostrar.GetString(0));
                    Session["IDReporte1"] = id;
                    
                    Response.Redirect("ReportesAdmin/ReporteAdmin1.aspx");
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

            //
        }

        protected void OnSelectedIndexChangedReporte(object sender, EventArgs e)
        {
            GridViewRow row = GridViewReporte.SelectedRow;
            Text6.Value = (GridViewReporte.SelectedRow.FindControl("lblnombre") as Label).Text;
            RCif.Value = Convert.ToString((GridViewReporte.SelectedRow.FindControl("lblcif") as Label).Text);
           
        }
    }
}