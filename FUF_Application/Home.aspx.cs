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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 var bytes = Convert.FromBase64String(Request.Cookies["UserName"].Value);
                var output = MachineKey.Unprotect(bytes, "ProtectedKey");
                string username = Encoding.UTF8.GetString(output);
                lbl_welcome.Text = "Welcome..." + username; 
            }
        }
    }
}