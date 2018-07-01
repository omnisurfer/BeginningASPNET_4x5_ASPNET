using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class Demos_WebServices_Demo : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string HelloWorld(string name)
    {
        System.Diagnostics.Debug.Print("HelloWorld");
        return string.Format("HelloWrold Method says hello {0}", name);
        
    }

    [WebMethod]
    public static string Test123(string name)
    {
        System.Diagnostics.Debug.Print("Test123");
        return string.Format("TEST123 Says hello {0}", name);        
    }

}