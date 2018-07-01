using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Containers : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ShowPanel_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = ShowPanel.Checked;
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
       Result.Text = "Your name is " + YourName.Text;
       Result.Text += "<br/>Your favorite language is " + DropDownList1.SelectedItem;
    }
}