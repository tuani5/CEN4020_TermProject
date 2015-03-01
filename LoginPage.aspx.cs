using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox_userid.Focus();    
    }
    protected void Button_ok_Click(object sender, EventArgs e)
    {
        if (TextBox_password.Text.Length > 0 && TextBox_userid.Text.Length > 0)
        {
            string outputmessage;
            Log lgn = LoginQuery.Get_Login(TextBox_userid.Text, out outputmessage);
            if (lgn != null)
            {
                Display_Result(lgn);
            }
            else Label_output.Text = outputmessage;
        }
        else
            Label_output.Text = " Error: Both text boxes must have text!";
    }
    protected void Display_Result(Log lgn)
    {
        if (TextBox_password.Text == lgn.getPassword.TrimEnd()){
            Label_output.Text = "Level " + lgn.getLevel.ToString() + " access";
            Session["Level"] = lgn.getLevel.ToString();
            Response.Redirect("Home.aspx");
            
        }
            
        else
            Label_output.Text = "Access is denied!!";
    }
}