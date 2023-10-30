using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;



namespace CRUD
{
    public partial class UpdateStudent : System.Web.UI.Page
    {
        protected void ClearFields()                            //A method that will be called later to clear all the fields.
        {
            TB_Firstname.Text = "";
            TB_Surname.Text = "";
            TB_Age.Text = "";
            TB_DateOfBirth.Text = "";
            TB_IdentityNumber.Text = "";
            TB_ContactNumber.Text = "";
            TB_eMailAdress.Text = "";
            CB_StudentEnabled.Checked = false;
            BN_Update.Enabled = false;
        }
        protected void Page_Load(object sender, EventArgs e)        //The main method, for the page, when the page loads.
        {
            if (!IsPostBack)                                        //An if else statement if post back is on.
            {
                BN_Update.Enabled = false;

                string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;  //The connection is established to the database, an string is created
                string sqldatabase = "SELECT IDX_Student, txtFirstName + ' ' +  txtSurname as Student FROM tbl_Students order by txtSurname";
                using (SqlConnection connection = new SqlConnection(constructor))                                        //The connection to the database is set by using the above connection
                    try
                    {
                        using (SqlCommand command = new SqlCommand(sqldatabase))                                        //you are using the connection created
                        {
                            using (SqlDataAdapter sqlda = new SqlDataAdapter())
                            {
                                command.Connection = connection;
                                sqlda.SelectCommand = command;
                                using (DataTable dt = new DataTable())
                                {
                                    sqlda.Fill(dt);                                                                     //Once the dropdownlist is selected this will tell it what to do.
                                    this.TableDropDown_Students.DataSource = dt;                                        //Tell it where to get information
                                    this.TableDropDown_Students.DataTextField = "Student";                              //Tell it where to get information
                                    this.TableDropDown_Students.DataValueField = "IDX_Student";                         //Which Value must be called.
                                    this.TableDropDown_Students.DataBind();                                             //It binds the data.        
                                    this.TableDropDown_Students.Items.Insert(0, new ListItem(String.Empty, String.Empty));  //What will be inserted into the dropdownlist.
                                }
                            }                              
                        }
                    }
                    catch (Exception label)
                    {
                        LB_Error.Text = "Cannot Load the Page" + label;         //if the above condition are not met it will give the error message of: "Cannot load the page".
                    }
                    finally
                    {
                        connection.Close();// close connection to the database
                    }
            }
        }

        protected void TableDropDown_Students_SelectedIndexChanged(object sender, EventArgs e)
        {
            string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;        //The connection is established to the database, an string is created
            string sqldatabase = "SELECT * FROM tbl_Students where IDX_Student = " + TableDropDown_Students.SelectedValue;   //The command given to sql database. 
            using (SqlConnection connection = new SqlConnection(constructor))                                                       //The connection to the database is set by using the above connection

                try
                {
                    
                        using (SqlCommand command = new SqlCommand(sqldatabase))
                        {
                            using (SqlDataAdapter sqlda = new SqlDataAdapter())
                            {
                                command.Connection = connection;                                        //The connection is created.
                                sqlda.SelectCommand = command;                                          //use sql adapter to connect your sql command
                                using (DataTable dt = new DataTable())
                                {
                                    sqlda.Fill(dt);
                                    this.Grid_ShowStudents.DataSource = dt; 
                                    this.Grid_ShowStudents.DataBind();

                                    TB_Firstname.Text = dt.Rows[0].Field<string>(1).ToString();         //An array of the grid that will populate the fields.
                                    TB_Surname.Text = dt.Rows[0].Field<string>(2).ToString();
                                    TB_Age.Text = dt.Rows[0].Field<int>(3).ToString();
                                    TB_DateOfBirth.Text = dt.Rows[0].Field<DateTime>(4).ToString();
                                    TB_IdentityNumber.Text = dt.Rows[0].Field<string>(5).ToString();
                                    TB_ContactNumber.Text = dt.Rows[0].Field<string>(6).ToString();
                                    TB_eMailAdress.Text = dt.Rows[0].Field<string>(7).ToString();
                                    CB_StudentEnabled.Checked = dt.Rows[0].Field<bool>(8);
                                }
                            }
                        }
                    
                }

                catch (Exception label)
                {
                    LB_Error.Text = "Student is not loaded: " + label;                      //The label will show,"Student is not loaded".
                }
                finally
                {
                    connection.Close();
                }
                    BN_Update.Enabled = true;
        }

        

        protected void BN_Update_Click(object sender, EventArgs e)
        {
            string sqldatabase = "UPDATE tbl_Students set [txtFirstName] = '" + TB_Firstname.Text + "',[txtSurname] = '" + TB_Surname.Text + "',[intAge] = " + Convert.ToInt16(TB_Age.Text) + ",[dtDOB] = '" + TB_DateOfBirth.Text + "',[txtIDno] = '" + TB_IdentityNumber.Text + "',[txtContactno] = '" + TB_ContactNumber.Text + "',[txtEMail] = '" + TB_eMailAdress.Text + "',[Enabled] = '" + CB_StudentEnabled.Checked + "',UpdateWho ='ELG',UpdateDate = Getdate() where IDX_Student = " + TableDropDown_Students.SelectedValue;

            //connection string
            string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;  //connection sring for database

            using (SqlConnection connection = new SqlConnection(constructor))             //The connection to sql database is set. 

                try
                {
                    //connect to db and save
                    using (SqlCommand command = new SqlCommand(sqldatabase))              //The command is set up, what to do.
                    {
                        command.Connection = connection;                                  //The connection is created.
                        connection.Open();                                                //The connection is opened.
                        command.ExecuteNonQuery();                                        //The queary is executed. 
                        LB_Error.Text = "Record is Updated";                              //The label will show,"Record is Updated".

                    }
                }
                catch (Exception label)                                                   //The exception is catched.
                {                 
                    LB_Error.Text = "Record is not Updated: " + label.Message;            //The label will show,"Record is not Updated".
                }
                finally
                {                    
                    connection.Close();                                                   //The connection is closed to sql database.
                }

        }

        protected void BN_Refresh_Click(object sender, EventArgs e)                      // The method for the refresh button.
        {                                                       
            Response.Redirect(Request.RawUrl);                                           //The page is loaded to its original state.
        }

        protected void BN_Undo_Click(object sender, EventArgs e)
        {
            ClearFields();                                                              // if you click on the Undo button it will clear all fields.
        }
    }
}