using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CRUD
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-FM1Q1H7I\\SQLEXPRESS;Initial Catalog=Students;User ID=sa;Password=optimi");
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into tbl_Students values('" + Firstname.Text + "','" + Surname.Text + "', '" + Age.Text + "', '" + int.Parse(DOB.Text) + "', '" + int.Parse(ID_Number.Text) + "', '" + int.Parse(ContactNumber.Text) + "', '" + E_Mail.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
        }
    }
}