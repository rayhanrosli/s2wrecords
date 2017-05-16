using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using static System.Net.WebRequestMethods;

namespace s2wrecords
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("db_1626508_1626508_co5027");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var Manager = new UserManager<IdentityUser>(userStore);
            var user = Manager.Find(logemail.Text, logpass.Text);

            if (user != null)
            {
                LogUserIn(Manager, user);
                Server.Transfer("reglog.aspx", true);
            }
            else
            {
                Label3.Text = "Invalid User Name or Password.";
            }

        }

            private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        }

        }
        }