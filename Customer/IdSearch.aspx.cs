using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "";
        //Label1.Text = ComboBox1.SelectedValue;
    }
}