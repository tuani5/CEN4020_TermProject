using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_MasterPage : System.Web.UI.MasterPage
{
    string prevLevel;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        prevLevel = (string)Session["Level"];
    }


    protected void DropDownListCustomer_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectIndex = DropDownListCustomer.SelectedIndex;
   
        if (selectIndex == 1)
        {
            Response.Redirect("~/Customer/ViewCustomer.aspx");
        }
        else if (selectIndex == 2)
        {
            Response.Redirect("~/Customer/ModifyCustomer.aspx");
        }
        else if (selectIndex == 3)
        {
            Response.Redirect("~/Customer/AddCustomer.aspx");
        }
        else if (selectIndex == 4)
        {
            Response.Redirect("~/Customer/DeleteCustomer.aspx");
        }
        else if ( selectIndex == 5)
        {
            Response.Redirect("~/Customer/LastNameSearch.aspx");

        }
        else if (selectIndex == 6)
        {
            Response.Redirect("~/Customer/IdSearch.aspx");
        }
    }

    protected void DropDownListInventory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectIndex = DropDownListInventory.SelectedIndex;

        if (selectIndex == 1)
        {
            Response.Redirect("~/Inventory/ViewInventory.aspx");
        }
    }
}
