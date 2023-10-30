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
    public partial class ReadStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)                                    //The main method, for the page, when the page loads.
        {
            if (!IsPostBack)
            {
                string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;  //The connection is established to the database, an string is created
                using (SqlConnection connection = new SqlConnection(constructor))               //The connection to sql database is set.
                {
                    using (SqlCommand command = new SqlCommand("SELECT * FROM tbl_Students"))   //The command for the method is set.
                    {
                        using (SqlDataAdapter sqlda = new SqlDataAdapter())
                        {
                            command.Connection = connection;                                    //The connection is created. 
                            sqlda.SelectCommand = command;                                      //Use sql adapter to coonect your sql command.
                            using (DataTable dt = new DataTable())
                            {
                                sqlda.Fill(dt);
                                this.Grid_ShowStudents.DataSource = dt;                         //Gets data from the sql command and inserts in the datatable.
                                this.Grid_ShowStudents.DataBind();                              //The data to gridview is bind.
                            }
                        }
                    }

                    using (SqlCommand command = new SqlCommand("SELECT IDX_Student, txtSurname as Surname FROM tbl_Students"))
                    {
                        using (SqlDataAdapter sqlda = new SqlDataAdapter())
                        {
                            command.Connection = connection;                                         //the connection is created
                            sqlda.SelectCommand = command;                                     //use sql adapter to coonect your sql command
                            using (DataTable dt = new DataTable())
                            {
                                sqlda.Fill(dt);                                                //Once the dropdownlist is selected this will tell it what to do. 
                                this.TableDropDown_Students.DataSource = dt;                         //Tell it where to get information
                                this.TableDropDown_Students.DataTextField = "Surname";               //Which field must be called.
                                this.TableDropDown_Students.DataValueField = "IDX_Student";          //Which Value must be called. 
                                this.TableDropDown_Students.DataBind();                              //It binds the data.                            
                                this.TableDropDown_Students.Items.Insert(0, new ListItem(String.Empty, String.Empty));  //What will be inserted into the dropdownlist. 
                            }
                        }
                    }
                    connection.Close();                                                             // The connection to the sql database is closed
                }
            }           
        }

        protected void TableDropDown_Students_SelectedIndexChanged(object sender, EventArgs e)      //The method of the DropDownList, to enable a function once its clicked.
        {
            string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;   //The connection is established to the database, an string is created
            using (SqlConnection connection = new SqlConnection(constructor))                       //The connection to sql database is set.
            {
                using (SqlCommand command = new SqlCommand("SELECT * FROM tbl_Students where IDX_Student = " + TableDropDown_Students.SelectedValue)) //The command for the method is set.
                {
                    using(SqlDataAdapter sqlda = new SqlDataAdapter())
                    {
                        command.Connection = connection;                                            //the connection is created
                        sqlda.SelectCommand = command;                                        //use sql adapter to coonect your sql command
                        using (DataTable dt = new DataTable())                                      
                        {
                            sqlda.Fill(dt);                                                   //The grid is filled
                            this.Grid_ShowStudents.DataSource = dt;                                 //What is going to be filled in the gridview.
                            this.Grid_ShowStudents.DataBind();                                      //The date sent to the gridview is bind.
                        }
                    }                    
                }
            }
        }        
    }
}