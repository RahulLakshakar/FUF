using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Text;
using FUFApplication.App_Code;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Text.RegularExpressions;

namespace FUFApplication.Admin
{
    public partial class MasterAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FUF_User execute = new FUF_User();
                lbl_timer.Text = DateTime.Now.ToString("dddd dd MMMM yyyy hh:mm:ss tt");
                var bytes = Convert.FromBase64String(Request.Cookies["UserID"].Value);
                var output = MachineKey.Unprotect(bytes, "ProtectedKey");
                string userID = Encoding.UTF8.GetString(output);
                string query = "Select * from Admin where UserID = '" + userID + "' ";
                DataSet ds = new DataSet();
                ds = execute.ExecuteQuery_DataSet(query, "AdminData");
                lbl_session.Text = "<span style='font-size:15px;color:#fff;'>Welcome..</span>" + ds.Tables["AdminData"].Rows[0]["AdminName"].ToString();
                userImage.ImageUrl = ds.Tables["AdminData"].Rows[0]["ImagePath"].ToString();
            }
            string pageName = Path.GetFileName(Request.Path);
            string[] Page = pageName.Split(new string[] { "." }, StringSplitOptions.None);
            lbl_pageHeading.Text = Page[0].ToString();
            page_icon.Attributes["class"] = "fa fa-" + Page[0].ToString().ToLower();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lbl_timer.Text = DateTime.Now.ToString("dddd dd MMMM yyyy hh:mm:ss tt");
        }
    }
}