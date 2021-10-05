using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCLienti_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clienti.aspx");
        }

        protected void btnProgramari_Click(object sender, EventArgs e)
        {
            Response.Redirect("Programari.aspx");
        }

        protected void header_TextChanged(object sender, EventArgs e)
        {

        }
    }
            
}