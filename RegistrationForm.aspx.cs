using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Login_Form_with_local_database
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["firstdb"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into SIGNUP values (@fname, @lname, @gender, @email, @username, @password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname", FirstNameTextBox.Text);
            cmd.Parameters.AddWithValue("@lname", LastNameTextBox.Text);
            cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@username", UserTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PassTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "scripts", "alert('Signup sucessfull .. Username is: "+ UserTextBox.Text +" and Password is: "+ PassTextBox.Text +"');",true);
                ClearControls();

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(),"scripts","<script>alert('Signup Failed !')</script>");

            }
            con.Close();
        }
        void ClearControls()
        {
            FirstNameTextBox.Text = LastNameTextBox.Text = EmailTextBox.Text = UserTextBox.Text = PassTextBox.Text = ConfirmPassTextBox.Text ="";
            GenderDropDownList.ClearSelection();

        }
    }
}