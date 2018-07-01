using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_ListControls : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        StringBuilder stringBuilder = new StringBuilder();

        stringBuilder.Append("In the DDL you selected " + DropDownList1.SelectedItem + "<br/>");

        //ResultLabel.Text = "In the DDL you selected " + DropDownList1.SelectedItem + "<br/>";

        foreach (ListItem item in CheckBoxList1.Items)
        {
            if (item.Selected == true)
            {
                //ResultLabel.Text += "In the CBL you selected " + item.Text + "<br/>";                                               
                stringBuilder.Append("In the CBL you selected " + item.Text + "<br/>");
            }
        }

        ResultLabel.Text = stringBuilder.ToString();
    }
}