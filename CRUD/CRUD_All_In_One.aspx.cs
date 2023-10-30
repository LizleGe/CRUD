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
    public partial class CRUD_All_In_One : System.Web.UI.Page
    {
        protected void ClearFields()                                    //A method that will be called later to clear all the fields.
        {
            TB_Firstname.Text = "";
            TB_Surname.Text = "";
            TB_Age.Text = "";
            TB_DateOfBirth.Text = "";
            TB_IdentityNumber.Text = "";
            TB_ContactNumber.Text = "";
            TB_E_Mail.Text = "";
            CheckBox_StudentEnabled.Checked = false;
        }
        protected void Page_Load(object sender, EventArgs e)            //The main method, for the page, when the page loads.
        {
            if (!IsPostBack)
            {
                BN_Update.Enabled = false;
                string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;  //connection sring for database.
                using (SqlConnection connection = new SqlConnection(constructor))                       //The connection to sql database is set.
                {
                    using (SqlCommand command = new SqlCommand("SELECT * FROM tbl_Students"))   //The command for the method is set.
                    {
                        using (SqlDataAdapter sqlda = new SqlDataAdapter())
                        {
                            command.Connection = connection;                                           //the connection is created. 
                            sqlda.SelectCommand = command;                                        //use sql adapter to coonect your sql command.
                            using (DataTable dt = new DataTable())
                            {
                                sqlda.Fill(dt);                                             //Fill the datatable/grid.
                                this.Grid_ShowStudents.DataSource = dt;                     //Gets data from the sql command and inserts in the datatable.
                                this.Grid_ShowStudents.DataBind();                          //the data to gridview is bind.
                            }
                        }
                    }

                    using (SqlCommand command = new SqlCommand("SELECT IDX_Student, txtSurname as Surname FROM tbl_Students"))
                    {
                        using (SqlDataAdapter sqlda = new SqlDataAdapter())
                        {
                            command.Connection = connection;                                           //the connection is created
                            sqlda.SelectCommand = command;                                        //use sql adapter to coonect your sql command
                            using (DataTable dt = new DataTable())
                            {
                                sqlda.Fill(dt);
                                this.TableDropDown_Students.DataSource = dt;                //Tell it where to get information
                                this.TableDropDown_Students.DataTextField = "Surname";      //Which field must be called.
                                this.TableDropDown_Students.DataValueField = "IDX_Student"; //Which Value must be called.
                                this.TableDropDown_Students.DataBind();                     //It binds the data.
                                this.TableDropDown_Students.Items.Insert(0, new ListItem(String.Empty, String.Empty));  //What will be inserted into the dropdownlist.
                            }
                        }
                    }
                    connection.Close();                                                            // The connection to the sql database is closed
                }
                string constructor2 = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;  //The connection is established to the database, an string is created
                string sqldatabase = "SELECT IDX_Student, txtFirstName + ' ' +  txtSurname as Student FROM tbl_Students order by txtSurname";   //The command given to sql database.
                using (SqlConnection connection = new SqlConnection(constructor2))       //The connection to the database is set by using the above connection

                    try
                    {
                        using (SqlCommand command = new SqlCommand(sqldatabase))         //you are using the connection created
                        {
                            using (SqlDataAdapter sqlda = new SqlDataAdapter())
                            {
                                command.Connection = connection;
                                sqlda.SelectCommand = command;
                                using (DataTable dt = new DataTable())
                                {
                                    sqlda.Fill(dt);
                                    this.TableDropDown_Students.DataSource = dt;
                                    this.TableDropDown_Students.DataTextField = "Student";
                                    this.TableDropDown_Students.DataValueField = "IDX_Student";
                                    this.TableDropDown_Students.DataBind();
                                    this.TableDropDown_Students.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                                }
                            }
                        }
                    }

                    catch (Exception label)
                    {
                        Label_Error3.Text = "Cannot load the page" + label;             //if the above condition are not met it will give the error message of: Cannot load the page
                    }
                    finally
                    {
                        connection.Close();                                        //the connection is closed to the database
                    }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double AgeOfStudent;
            string DateOfBirth = TB_IdentityNumber.Text.Substring(0, 6);            // The first 6 numbers of ID will be selected, in the Textbox, TB_IdentityNumber
            DateTime CurrentDate = DateTime.Now;                                    //The current date is selected.
            if (Convert.ToInt32(DateOfBirth) > 250101)
            {
                string AccurateDateOfBirth = "19" + DateOfBirth;                    //19 will be added to the first 2 characters of the string, DateOfBirth 
                string AccurateYearofBirth = AccurateDateOfBirth.Substring(0, 4);   //Take the first 4 characters of the string for the date.
                int ConvertDate = Convert.ToInt32(CurrentDate.Year);                //It converts the above 4 character string to the current date.
                string StringDate = Convert.ToString(ConvertDate);                  //The int ConvertDate is converted to a string
                string Year = StringDate.Substring(0, 4);                           //The first 4 characters of the StringDate is selected, the year.
                AgeOfStudent = Convert.ToInt32(Year) - Convert.ToInt32(AccurateYearofBirth); //The age of the student is calculated.
                TB_Age.Text = Convert.ToString(AgeOfStudent);                       //The textbox, TB_Age will show the calculation of the above code, to show age of student.
                TB_DateOfBirth.Text = AccurateDateOfBirth;                          //The TB_DateOfBirth will show the age of the student

            }
            else
            {
                string AccurateDateOfBirth = "20" + DateOfBirth;                    //20 will be added to the first 2 characters of the string, DateOfBirth
                string AccurateYearofBirth = AccurateDateOfBirth.Substring(0, 4);   //Take the first 4 characters of the string for the date.
                int ConvertDate = Convert.ToInt32(CurrentDate.Year);                //It converts the above 4 character string to the current date.
                string StringDate = Convert.ToString(ConvertDate);                  //The int ConvertDate is converted to a string
                string Year = StringDate.Substring(0, 4);                           //The first 4 characters of the StringDate is selected, the year.
                AgeOfStudent = Convert.ToInt32(Year) - Convert.ToInt32(AccurateYearofBirth);    //The age of the student is calculated.
                TB_Age.Text = Convert.ToString(AgeOfStudent);                       //The textbox, TB_Age will show the calculation of the above code, to show age of student.
                TB_DateOfBirth.Text = AccurateDateOfBirth;                          //The TB_DateOfBirth will show the age of the student
            }

            string constructor3 = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;    //The connection is established to the database, and string is created.
            string sql = @"
                        INSERT INTO 
                            tbl_Students ([txtFirstName],[txtSurname],[intAge],[dtDOB],[txtIDno],[txtContactno],[txtEMail],[Enabled],[UpdateWho],[UpdateDate])
                            VALUES ('" + TB_Firstname.Text + "','" + TB_Surname.Text + "'," + TB_Age.Text + ",'" + TB_DateOfBirth.Text + "','" + TB_IdentityNumber.Text + "','" + TB_ContactNumber.Text + "','" + TB_E_Mail.Text + "',1,'ELG',getdate())";
            using (SqlConnection connection = new SqlConnection(constructor3))                                            //The connection to the database is set by using the above connection.

                try
                {
                    using (SqlCommand command = new SqlCommand(sql))                  //The command is given.
                    {
                        command.Connection = connection;                              //The connection is created.
                        connection.Open();                                            //The connection to sql is opened.
                        command.ExecuteNonQuery();                                    //The query is executed.
                        Lable_Error1.Text = "The record is saved";                    //Once you click on the save button the label will tell you, "The record is saved".
                    }
                }
                catch (Exception label)                                               // The exception is catched if the above condition is not met.
                {
                    Lable_Error1.Text = "The record is not saved: " + label.Message;   //Lable_Error1 will show the message,"The record is not saved"    
                }
                finally
                {
                    connection.Close();                                               //The connection to sql database is closed.
                }
        }

        protected void TableDropDown_Students_SelectedIndexChanged(object sender, EventArgs e)  //Explained in the previos web pages. 
        {
            string constructor4= ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(constructor4))
            {
                using (SqlCommand command = new SqlCommand("SELECT * FROM tbl_Students where IDX_Student = " + TableDropDown_Students.SelectedValue))
                {
                    using (SqlDataAdapter sqlda = new SqlDataAdapter())
                    {
                        command.Connection = connection;
                        sqlda.SelectCommand = command;
                        using (DataTable dt = new DataTable())
                        {
                            sqlda.Fill(dt);
                            this.Grid_ShowStudents.DataSource = dt;
                            this.Grid_ShowStudents.DataBind();
                        }
                    }
                }                
            }
            string constructor5 = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;           //The connection is established to the database, an string is created
            string mysqlselect = "SELECT * FROM tbl_Students where IDX_Student = " + TableDropDown_Students.SelectedValue;
            using (SqlConnection connection = new SqlConnection(constructor5))                                                   //The connection to the database is set by using the above connection

                try
                {
                    using (SqlCommand command = new SqlCommand(mysqlselect))
                    {
                        using (SqlDataAdapter sqlda = new SqlDataAdapter())
                        {
                            command.Connection = connection;
                            sqlda.SelectCommand = command;
                            using (DataTable dt = new DataTable())
                            {
                                sqlda.Fill(dt);
                                this.Grid_ShowStudents.DataSource = dt;
                                this.Grid_ShowStudents.DataBind();

                                TB_Firstname.Text = dt.Rows[0].Field<string>(1).ToString();         //An array of the grid that will populate the fields
                                TB_Surname.Text = dt.Rows[0].Field<string>(2).ToString();
                                TB_Age.Text = dt.Rows[0].Field<int>(3).ToString();
                                TB_DateOfBirth.Text = dt.Rows[0].Field<DateTime>(4).ToString();
                                TB_IdentityNumber.Text = dt.Rows[0].Field<string>(5).ToString();
                                TB_ContactNumber.Text = dt.Rows[0].Field<string>(6).ToString();
                                TB_E_Mail.Text = dt.Rows[0].Field<string>(7).ToString();
                                CheckBox_StudentEnabled.Checked = dt.Rows[0].Field<bool>(8);
                            }
                        }
                    }
                }

                catch (Exception label)
                {
                    Label_Error2.Text = "Student is not loaded: " + label;         //if the above condition are not met it will give the error message of: Student is not loaded
                }
                finally
                {
                    connection.Close();                                         //The connection to sqldatabase is closed.
                }
                    BN_Update.Enabled = true;

            string constructor6 = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;            //The connection is established to the database, an string is created.
            string mysql = "SELECT * FROM tbl_Students where IDX_Student = " + TableDropDown_Students.SelectedValue;
            using (SqlConnection con = new SqlConnection(constructor6))    //The command is given.                                                       //The connection to the database is set by using the above connection.

                try
                {
                    using (SqlCommand command = new SqlCommand(mysql))
                    {
                        using(SqlDataAdapter sqlda = new SqlDataAdapter())
                        {
                            command.Connection = con;                           //The connection is created.
                            sqlda.SelectCommand = command;
                            using (DataTable dt = new DataTable())
                            {
                                sqlda.Fill(dt);                               //a command is given to fill the gridview.
                                this.Grid_ShowStudents.DataSource = dt;
                                this.Grid_ShowStudents.DataBind();
                            }
                        }
                    }                                                                                    
                }
                catch (Exception label)
                {
                    Label_Error3.Text = "The student was not loaded: " + label;    //If the record could not been deleted, the label will tell you: "The student was not loaded"
                }
                finally
                {
                    con.Close();                                                //The connection to sql is closed
                }
        }

        protected void BN_Update_Click(object sender, EventArgs e)
        {
            string mysql = "UPDATE tbl_Students set [txtFirstName] = '" + TB_Firstname.Text + "',[txtSurname] = '" + TB_Surname.Text + "',[intAge] = " + Convert.ToInt16(TB_Age.Text) + ",[dtDOB] = '" + TB_DateOfBirth.Text + "',[txtIDno] = '" + TB_IdentityNumber.Text + "',[txtContactno] = '" + TB_ContactNumber.Text + "',[txtEMail] = '" + TB_E_Mail.Text + "',[Enabled] = '" + CheckBox_StudentEnabled.Checked + "',UpdateWho ='ELG',UpdateDate = Getdate() where IDX_Student = " + TableDropDown_Students.SelectedValue;

            
            string constructor7 = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;  //connection sring for database

            using (SqlConnection connection = new SqlConnection(constructor7))   //The connection to sqldatabase is set.

                try
                {                   
                    using (SqlCommand command = new SqlCommand(mysql))          //The connection to database and its saved and the command is set up. 
                    {
                        command.Connection = connection;                        //The connection to database sql is created.
                        connection.Open();                                      //The connection is opened.
                        command.ExecuteNonQuery();                              //The query is executed.
                        Label_Error2.Text = "Record is Updated";                //Once the Update button is clicked, the label wil indicate:"Record is Updated".

                    }
                }
                catch (Exception label)
                {
                    Label_Error2.Text = "Record is not Updated: " + label.Message;  //Once the Update button is clicked and there is an error, the label wil indicate:"Record is not Updated".
                }
                finally
                {
                    
                    connection.Close();                                         //The connection to database sql is closed.
                }
        }

        protected void BN_Delete_Click(object sender, EventArgs e)
        {
            string sqldatabase = "Delete from tbl_Students where IDX_Student = " + TableDropDown_Students.SelectedValue;    //this tells the
            string constructor8 = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;    //The connection is established to the database, an string is created
            using (SqlConnection connection = new SqlConnection(constructor8))     //The connection to the database is set by using the above connection

                try
                {
                    using (SqlCommand command = new SqlCommand(sqldatabase))            //The command is given
                    {
                        command.Connection = connection;                                //The connection is created.
                        connection.Open();                                              //The connection to sql is opened.
                        command.ExecuteNonQuery();                                      //The query is executed.
                        Label_Error3.Text = "The record has been deleted";              //Once you click on the delete button the label will tell you, "The record has been deleted".
                    }
                }
                catch (Exception ex)                                                    // The exception is catched if the above condition is not met.
                {

                    Label_Error3.Text = "Record is not deleted: " + ex.Message;         //If the record could not been deleted, the label will tell you: "Record is not deleted".
                }
                finally
                {
                    connection.Close();                                                 //The connection to sql database is closed.
                }
        }
        protected void BN_Undo_Click(object sender, EventArgs e)                        //The method of the Undo button is created.
        {
            ClearFields();                                                              //The method of clearfields are called. 
        }

        protected void BN_Refresh_Click(object sender, EventArgs e)                     //The method for the refresh button is created.
        {
            Response.Redirect(Request.RawUrl);                                          //The web page is refreshed, redirected to the orginal.                                         
        }        
    }
}