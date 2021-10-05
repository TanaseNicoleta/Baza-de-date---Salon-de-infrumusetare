using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Programari : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            SqlParameter p1 = new SqlParameter("@Id_client", System.Data.SqlDbType.VarChar);
            p1.Value = id_client.Text;
            SqlParameter p2 = new SqlParameter("@data", System.Data.SqlDbType.VarChar);
            p2.Value = data.Text;
            SqlParameter p3 = new SqlParameter("@ora", System.Data.SqlDbType.VarChar);
            p3.Value = ora.Text;
            SqlParameter p4 = new SqlParameter("@serviciu", System.Data.SqlDbType.VarChar);
            p4.Value = serviciu.Text;
          

            string sInsert = "INSERT INTO [Programari] ([Id_client], [data], [ora], [serviciu]) VALUES (@Id_client, @data, @ora, @serviciu)";
            SqlConnection conInsert = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True");
            SqlCommand command = new SqlCommand(sInsert, conInsert);
            command.Parameters.Add(p1);
            command.Parameters.Add(p2);
            command.Parameters.Add(p3);
            command.Parameters.Add(p4);

            try
            {
                conInsert.Open();
                int d = command.ExecuteNonQuery();

                id_client.Text = "";
                data.Text = "";
                ora.Text = "";
                serviciu.Text = "";
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("IOException source: {0}", ex.Source);
            }
            finally
            {
                conInsert.Close();
            }

        }
    }
}