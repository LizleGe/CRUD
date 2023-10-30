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
    public partial class CreateStudent : System.Web.UI.Page
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
        }
       
        protected void BN_Save_Click(object sender, EventArgs e)        //The method of the Save button, to enable a function once its clicked. 
        {
            double AgeOfStudent;
            string DateOfBirth = TB_IdentityNumber.Text.Substring(0, 6);    // The first 6 numbers of ID will be selected, in the Textbox, TB_IdentityNumber
            DateTime CurrentDate = DateTime.Now;                            //The current date is selected.
            if(Convert.ToInt32(DateOfBirth) > 250101)
            {
                string AccurateDateOfBirth = "19" + DateOfBirth;            //19 will be added to the first 2 characters of the string, DateOfBirth 
                string AccurateYearofBirth = AccurateDateOfBirth.Substring(0, 4);   //Take the first 4 characters of the string for the date.
                int ConvertDate = Convert.ToInt32(CurrentDate.Year);        //It converts the above 4 character string to the current date.
                string StringDate = Convert.ToString(ConvertDate);          //The int ConvertDate is converted to a string.
                string Year = StringDate.Substring(0, 4);                   //The first 4 characters of the StringDate is selected, the year.
                AgeOfStudent = Convert.ToInt32(Year) - Convert.ToInt32(AccurateYearofBirth); //The age of the student is calculated.
                TB_Age.Text = Convert.ToString(AgeOfStudent);               //The textbox, TB_Age will show the calculation of the above code, to show age of student.
                TB_DateOfBirth.Text = AccurateDateOfBirth;                  //The TB_DateOfBirth will show the age of the student

            }
            else
            {
                string AccurateDateOfBirth = "20" + DateOfBirth;                //20 will be added to the first 2 characters of the string, DateOfBirth
                string AccurateYearofBirth = AccurateDateOfBirth.Substring(0, 4);   //Take the first 4 characters of the string for the date.
                int ConvertDate = Convert.ToInt32(CurrentDate.Year);            //It converts the above 4 character string to the current date.
                string StringDate = Convert.ToString(ConvertDate);              //The int ConvertDate is converted to a string
                string Year = StringDate.Substring(0, 4);                       //The first 4 characters of the StringDate is selected, the year.
                AgeOfStudent = Convert.ToInt32(Year) - Convert.ToInt32(AccurateYearofBirth);    //The age of the student is calculated.
                TB_Age.Text = Convert.ToString(AgeOfStudent);
                TB_DateOfBirth.Text = AccurateDateOfBirth;                      //The TB_DateOfBirth will show the age of the student
            }
                    
            
            string constructor = ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString;    //The connection is established to the database, an string is created.
            string sqldatabase = @"                                                                                      
                        INSERT INTO 
                            tbl_Students ([txtFirstName],[txtSurname],[intAge],[dtDOB],[txtIDno],[txtContactno],[txtEMail],[Enabled],[UpdateWho],[UpdateDate]) 
                            VALUES ('" + TB_Firstname.Text + "','" + TB_Surname.Text + "'," + Convert.ToInt32(TB_Age.Text)  + ",'" + TB_DateOfBirth.Text + "','" + TB_IdentityNumber.Text + "','" + TB_ContactNumber.Text + "','" + TB_eMailAdress.Text + "',1,'ELG',getdate())";
            using (SqlConnection connection = new SqlConnection(constructor))                                   //The connection to the database is set by using the above connection.

                try
                {                                    
                    using (SqlCommand command = new SqlCommand(sqldatabase))                     //The command is given.
                    {
                        command.Connection = connection;                                         //The connection is created.
                        connection.Open();                                                       //The connection to sql is opened.
                        command.ExecuteNonQuery();                                               //The query is executed.
                        LB_Error.Text = "The record is saved";                                   //Once you click on the save button the label will tell you, "The record is saved".
                    }
                }
                catch (Exception label)                                                          // The exception is catched if the above condition is not met.
                {                    
                    LB_Error.Text = "The record is not saved: " + label.Message;                 //Once you click on the save button the label will tell you, "The record is not saved".
                }
                finally
                {                    
                    connection.Close();                                                          //The connection to sql database is closed.
                }                       
        }

        protected void BN_Undo_Click(object sender, EventArgs e)                                 //The method of the Undo button, to enable a function once its clicked.                                
        {
            ClearFields();                                                                       //The method above is called, clearfields().
        }

        //protected void TB_IdentityNumber_TextChanged(object sender, EventArgs e)               //The method for the identity number texbox to convert.
        //{                                                                                      //the date of birth and age can be derived from first 6 digits of Identiy number.
    
        //    TB_Age.Text = Convert.ToString(Convert.ToInt16(DateTime.Now.Year.ToString().Substring(2, 2)) - Convert.ToInt16(TB_IdentityNumber.Text.ToString().Substring(0, 2)));
                       
        //}

        protected void BN_Refresh_Click(object sender, EventArgs e)                              //The method of the refresh button, to enable a function once its clicked.                                                             
        {
            Response.Redirect(Request.RawUrl);                                                   //The page is loaded to its original state. 
        }        
    }
}