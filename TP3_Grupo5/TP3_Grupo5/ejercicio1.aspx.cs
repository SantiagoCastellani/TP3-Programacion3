using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_Grupo5
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                // Mantiene una lista y no se elimina con el Load
                ViewState["Localidades"] = new List<string>();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string localidad = txtLocalidad.Text.Trim();
            List<string> localidades = (List<string>)ViewState["Localidades"];

            if (!Existe(localidad))
            {
                localidades.Add(localidad);
                ViewState["Localidades"] = localidades;
                ddlLocalidades.Items.Add(localidad);
                txtLocalidad.Text = "";
            }
            else
            {
                // Dispara Alerta si ya existe la localidad
                string mensaje = "La localidad ya existe.";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertScript", "alert('" + mensaje + "');", true);
                txtLocalidad.Text = "";
            }
        }

        // ¿Existe la Localidad?
        private Boolean Existe(string loc)
        {
            List<string> localidades = (List<string>)ViewState["Localidades"];
            return localidades.Contains(loc, StringComparer.OrdinalIgnoreCase);
        }

    }
}