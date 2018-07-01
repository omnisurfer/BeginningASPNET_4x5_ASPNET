using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_ControlsDemo : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (YourName.Text != "")
            Result.Text = "Your name is " + YourName.Text;
        else
            Result.Text = "Please enter your name.";
    }
}