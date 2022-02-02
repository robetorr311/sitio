using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Sitio
{

    public partial class Default : System.Web.UI.Page
    {
        protected void Ingresar(object sender, EventArgs e)
        {
            DBconnect connect = new DBconnect();
            DataTable users = new DataTable();
            users = connect.SusersBy(username.Text, password.Text);
            int rec = users.Rows.Count;
            if (rec > 0)
            {
                this.Session["Session"] = "1";
                this.Session.Timeout = 60;
                Server.Transfer("Menu/Menu.aspx");
             }
            else
            {
                Response.Redirect("denegado.aspx");
            }

        }
    }
}