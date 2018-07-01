using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_Email : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "CosaNostra Pizza News Letter";
        myMessage.Body = "Hello from CosaNostra Pizza!";
        myMessage.From = new MailAddress("cosanostra@pizza.com", "Cosa Nostra Pizza");
        myMessage.To.Add(new MailAddress("pizzalover@pie.com", "Y.T."));

        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);
    }
}