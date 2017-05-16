using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace s2wrecords
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("db_1626508_1626508_co5027");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var rolestore = new RoleStore<IdentityRole>(identityDbContext);
            var rolemanager = new RoleManager<IdentityRole>(rolestore);

            var user = new IdentityUser() { UserName = regname.Text, Email = regemail.Text };
            IdentityResult result = manager.Create(user, regpass.Text);
            if (result.Succeeded)
            {
                IdentityRole endRoleUser = new IdentityRole("endUser");
                rolemanager.Create(endRoleUser);
                Server.Transfer("reglog.aspx", true);

            }
            else
            {
                Label4.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }

        }
    }
}