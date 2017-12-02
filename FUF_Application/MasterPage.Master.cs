using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Text;

namespace FUFApplication
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var bytes = Convert.FromBase64String(Request.Cookies["UserName"].Value);
                var output = MachineKey.Unprotect(bytes, "ProtectedKey");
                string username = Encoding.UTF8.GetString(output);
                lbl_username.Text = "Welcome.." + username;
               
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["UserID"] != null)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["UserID"].Expires = DateTime.Now.AddDays(-1);
                Response.Redirect("index.aspx");
            }
        }
    }
}