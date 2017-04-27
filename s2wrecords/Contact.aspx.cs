using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace s2wrecords
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("spin2winrecords@gmail.com", "vinylrecords");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(email.Text);
            msg.To.Add(new MailAddress("spin2winrecords@gmail.com"));

            msg.Subject = subject.Text;
            msg.IsBodyHtml = true;
            msg.Body = string.Format("A message from " + name.Text + ",   Email: " + email.Text + ",  Subject: " + subject.Text + ", Message: " + message.Text);

            try
            {
                client.Send(msg);
                label.Text = "Message has been successfully sent. Thank you for your message! We will get back to you as soon as we can.";
            }
            catch (Exception ex)
            {
                label.Text = "Message Error: Please try again." + ex.Message;
            }
            name.Text = "";
            email.Text = "";
            subject.Text = "";
            message.Text = "";
        }
    }
}


    