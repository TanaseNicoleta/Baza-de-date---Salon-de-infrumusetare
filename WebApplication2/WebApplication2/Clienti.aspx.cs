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
    public partial class Clienti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {

            SqlParameter p1 = new SqlParameter("@nume", System.Data.SqlDbType.VarChar);
            p1.Value = nume.Text;
            SqlParameter p2 = new SqlParameter("@prenume", System.Data.SqlDbType.VarChar);
            p2.Value = prenume.Text;
            SqlParameter p3 = new SqlParameter("@telefon", System.Data.SqlDbType.VarChar);
            p3.Value = telefon.Text;
            SqlParameter p4 = new SqlParameter("@email", System.Data.SqlDbType.VarChar);
            p4.Value = email.Text;
            SqlParameter p5 = new SqlParameter("@varsta", System.Data.SqlDbType.Int);
            p5.Value = varsta.Text;

            string sInsert = "INSERT INTO [Clienti] ([nume], [prenume], [telefon], [email], [varsta]) VALUES (@nume, @prenume, @telefon, @email, @varsta)";
            SqlConnection conInsert = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True");
            SqlCommand command = new SqlCommand(sInsert, conInsert);
            command.Parameters.Add(p1);
            command.Parameters.Add(p2);
            command.Parameters.Add(p3);
            command.Parameters.Add(p4);
            command.Parameters.Add(p5);


            try
            {
                conInsert.Open();
                int d = command.ExecuteNonQuery();

                nume.Text = "";
                prenume.Text = "";
                telefon.Text = "";
                email.Text = "";
                varsta.Text = "";
                GridView1.DataBind();
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dataView1 = (DataView)SqlDataSource1.Select(args);
            DataTable dataTable1 = dataView1.ToTable();
            DataSet ds = new DataSet();
            ds.Tables.Add(dataTable1);
            Cache["FBCache"] = ds;
            Response.Redirect("Graphs.aspx?tip=" + this.DropDownList1.SelectedItem.Text);
        }

    }
}
