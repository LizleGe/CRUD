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
    public partial class DeleteStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)                            //The main method, for the page, when the page loads.
        {
            if(!IsPostBack)                                                             //An if else statement if post back is on.
            {
                string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;  //The connection is established to the database, an string is created
                string sqldatabase = "SELECT IDX_Student, txtFirstName + ' ' +  txtSurname as Student FROM tbl_Students order by txtSurname";   //The command given to sql database.
                using (SqlConnection connection = new SqlConnection(constructor))       //The connection to the database is set by using the above connection

                    try
                    {
                        using(SqlCommand command = new SqlCommand(sqldatabase))         //you are using the connection created
                        {
                            using(SqlDataAdapter sqlda = new SqlDataAdapter())
                            {
                                command.Connection = connection;                        //the connection is created
                                sqlda.SelectCommand = command;                          //use sql adapter to coonect your sql command
                                using (DataTable dt = new DataTable())
                                {
                                    sqlda.Fill(dt);
                                    this.TableDropDown_Students.DataSource = dt;                                        //Tell it where to get information
                                    this.TableDropDown_Students.DataTextField = "Student";                              //Which field must be called.
                                    this.TableDropDown_Students.DataValueField = "IDX_Student";                         //Which Value must be called.
                                    this.TableDropDown_Students.DataBind();                                             //It binds the data. 
                                    this.TableDropDown_Students.Items.Insert(0, new ListItem(String.Empty, String.Empty));  //What will be inserted into the dropdownlist.
                                }
                            }
                        }
                    }

                    catch (Exception label)
                    {
                        LB_Error.Text = "Cannot load the page" + label;             //if the above condition are not met it will give the error message of: Cannot load the page
                    }
                    finally
                    {
                        connection.Close();                                        //the connection is closed to the database
                    }
            }
        }

        protected void BT_refresh_Click(object sender, EventArgs e)         // a new method for the refresh button is created 
        {
            Response.Redirect(Request.RawUrl);                              //the page will refresh by redirecting it to default page
        }

        protected void BT_Delete_Click(object sender, EventArgs e)          // a new method for the delete button is created
        {
            string sqldatabase = "Delete from tbl_Students where IDX_Student = " + TableDropDown_Students.SelectedValue;    //this tells the
            string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;    //The connection is established to the database, an string is created
            using (SqlConnection connection = new SqlConnection(constructor))           //The connection to the database is set by using the above connection

                try
                {
                    using (SqlCommand command = new SqlCommand(sqldatabase))            //The command is given
                    {
                        command.Connection = connection;                               //The connection is created.
                        connection.Open();                                         //The connection to sql is opened.
                        command.ExecuteNonQuery();                              //The query is executed.
                        LB_Error.Text = "The record has been deleted";      //Once you click on the delete button the label will tell you, "The record has been deleted".
                    }
                }
                catch (Exception label)                                        // The exception is catched if the above condition is not met.
                {
                    
                    LB_Error.Text = "Record is not deleted: " + label.Message; //If the record could not been deleted, the label will tell you: "Record is not deleted".
                }
                finally                                         
                {
                    connection.Close();                                            //The connection to sql database is closed.
                }
        }

        protected void TableDropDown_Students_SelectedIndexChanged(object sender, EventArgs e)                              //A new method for the dropdown list is created. 
        {
            string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;            //The connection is established to the database, an string is created.
            string sqldatabase = "SELECT * FROM tbl_Students where IDX_Student = " + TableDropDown_Students.SelectedValue;
            using (SqlConnection connection = new SqlConnection(constructor))                                                           //The connection to the database is set by using the above connection.

                try
                {
                    {
                        using (SqlCommand command = new SqlCommand(sqldatabase))  //The command is given.
                        {
                            using (SqlDataAdapter sqlda = new SqlDataAdapter())
                            {
                                command.Connection = connection;                    //The connection is created.
                                sqlda.SelectCommand = command;                    
                                using (DataTable dt = new DataTable())
                                {
                                    sqlda.Fill(dt);                                   //a command is given to fill the gridview.
                                    this.Grid_ShowStudents.DataSource = dt; 
                                    this.Grid_ShowStudents.DataBind();
                                }
                            }
                        }
                    }
                }
                catch (Exception label)
                {
                    LB_Error.Text = "The student was not loaded: " + label;            //If the record could not been deleted, the label will tell you: "The student was not loaded"
                }
                finally
                {
                    connection.Close();                                            //The connection to sql is closed
                }
        }
    }
}