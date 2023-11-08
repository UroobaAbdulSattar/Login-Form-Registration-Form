using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_Form_with_local_database
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["firstdb"].ConnectionString; //Aik configuration string ka varible bana kar usmey configuration manager ki class add kari phir connection string mai naam jo humne web.config mai diya tha


        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void LoginButton_Click(object sender, EventArgs e)
        {
              SqlConnection con = new SqlConnection(cs);
            try
            {


              
                string query = "select * frm SIGNUP where username= @user and password= @pass";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@user", UserTextBox.Text);
                cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Session["user"] = UserTextBox.Text;
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Sucessful!)</script>");
                    Response.Write("Welcome !");
                }
                else
                {
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !)</script>");
                    Response.Write("Wrong Credentials");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
       
            }
        }


    }
}