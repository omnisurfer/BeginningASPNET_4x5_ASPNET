using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;


public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!string.IsNullOrEmpty(HomePhone.Text) || !string.IsNullOrEmpty(BusinessPhone.Text))
            args.IsValid = true;

        else        
            args.IsValid = false;                    
    }

    protected void Send_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
            string mailBody = File.ReadAllText(fileName);

            mailBody = mailBody.Replace("##Name##", Name.Text);
            mailBody = mailBody.Replace("##Email##", Email.Text);
            mailBody = mailBody.Replace("##HomePhone##", HomePhone.Text);
            mailBody = mailBody.Replace("##BusinessPhone##", BusinessPhone.Text);
            mailBody = mailBody.Replace("##Comments##", Comments.Text);

            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "User input from " + Page.Title;
            myMessage.Body = mailBody;

            myMessage.From = new MailAddress("cosaNostraServer@pizza.com", "CosaNostra Pizza Site");
            myMessage.To.Add(new MailAddress("cosaNostraAdmin@pizza.com", "CosaNostra Admin"));
            myMessage.ReplyToList.Add(new MailAddress(Email.Text, Name.Text));

            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);

            Message.Visible = true;
            MessageSentPara.Visible = true;
            FormTable.Visible = false;
            System.Threading.Thread.Sleep(2500);
        }
    }
}