using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using FUFApplication.App_Code;

namespace FUFApplication
{
    public partial class index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load();
            }
        }

        public void load()
        {
            txtregName.Text = "";
            txtregEmail.Text = "";
            txtregDOB.Text = "";
            txtregCity.Text = "";
            txtregPass.Text = "";
            txtregCpass.Text = "";
            txtregMobile.Text = "";
            txtregCaptcha.Text = "";
        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string Catpcha = Session["CAPTCHA"].ToString();
            string[] sub = txtregDOB.Text.Split('/');
            string DOB = sub[2] + "/" + sub[1] + "/" + sub[0];
            DateTime d = DateTime.Parse(DOB);
            if (txtregCaptcha.Text != "")
            {
                if (txtregCaptcha.Text.Equals(Catpcha))
                {
                    string query = "Select count(*) from Users where Email = '" + txtregEmail.Text + "' ";
                    FUF_User execute = new FUF_User();
                    int rv = Convert.ToInt32(execute.ExecuteQuery_ExecuteScalar(query));
                    if (rv > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "Script", "alert('Email is already registered; Please try with other email');window.location='index.aspx'", true);
                    }
                    else
                    {
                        query = "Select count(*) from Users";
                        int id = Convert.ToInt32(execute.ExecuteQuery_ExecuteScalar(query));
                        id = id + 1;
                        query = "Insert into Users (UserID,UserName, Email, City,Password,DOB,MobileNo) values ('" + id + "', '" + txtregName.Text + "', '" + txtregEmail.Text + "','" + txtregCity.Text + "' ,'" + txtregCpass.Text + "', '" + d.Date.ToString("yyyy/MM/dd") + "','" + txtregMobile.Text + "') ";
                        try
                        {
                            execute.ExecuteQuery_Update(query);
                            ScriptManager.RegisterStartupScript(this, GetType(), "Script", "alert('You have registered succesfully');window.location='index.aspx'", true);
                        }
                        catch (Exception ex)
                        {

                            throw (ex);
                        }
                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Script", "alert('Catpcha must be match')", true);

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Script", "alert('Please Enter Capcha')", true);
            }
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            string query = "select count(*) from Users where Email = '" + text_userName.Text + "' AND Password = '" + text_userPass.Text + "' ";
            int rv = 0;
            FUF_User execute = new FUF_User();
            rv = execute.ExecuteQuery_ExecuteScalar(query);
            if (rv > 0)
            {
                query = "Select * from Users where Email = '" + text_userName.Text + "' AND Password = '" + text_userPass.Text + "' ";
                DataSet ds = new DataSet();
                ds = execute.ExecuteQuery_DataSet(query, "User_Data");
                if (ds.Tables["User_Data"].Rows.Count > 0)
                {
                    var cookieText = Encoding.UTF8.GetBytes(ds.Tables["User_Data"].Rows[0]["UserID"].ToString());
                    var encryptedValue = Convert.ToBase64String(MachineKey.Protect(cookieText, "ProtectedKey"));
                    Response.Cookies["UserID"].Value = encryptedValue;
                    Response.Cookies["UserID"].Expires = DateTime.Now.AddHours(2);

                    cookieText = Encoding.UTF8.GetBytes(ds.Tables["User_Data"].Rows[0]["UserName"].ToString());
                    encryptedValue = Convert.ToBase64String(MachineKey.Protect(cookieText, "ProtectedKey"));
                    Response.Cookies["UserName"].Value = encryptedValue;
                    Response.Cookies["UserName"].Expires = DateTime.Now.AddHours(2);

                    Response.Redirect("Home.aspx");
                }

            }

            else
            {
                query = "select count(*) from Admin where AdminName = '" + text_userName.Text + "' AND Password = '" + text_userPass.Text + "' ";
                rv = execute.ExecuteQuery_ExecuteScalar(query);
                if (rv > 0)
                {
                    query = "Select * from Admin where AdminName = '" + text_userName.Text + "' AND Password = '" + text_userPass.Text + "' ";
                    DataSet ds = new DataSet();
                    ds = execute.ExecuteQuery_DataSet(query, "AdminData");
                    if (ds.Tables["AdminData"].Rows.Count > 0)
                    {
                        var cookieText = Encoding.UTF8.GetBytes(ds.Tables["AdminData"].Rows[0]["UserID"].ToString());
                        var encryptedValue = Convert.ToBase64String(MachineKey.Protect(cookieText, "ProtectedKey"));
                        Response.Cookies["UserID"].Value = encryptedValue;
                        Response.Cookies["UserID"].Expires = DateTime.Now.AddHours(2);

                        cookieText = Encoding.UTF8.GetBytes(ds.Tables["AdminData"].Rows[0]["AdminName"].ToString());
                        encryptedValue = Convert.ToBase64String(MachineKey.Protect(cookieText, "ProtectedKey"));
                        Response.Cookies["AdminName"].Value = encryptedValue;
                        Response.Cookies["AdminName"].Expires = DateTime.Now.AddHours(2);

                        Response.Redirect("~/Admin/Dashboard.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "Script", "alert('Incorrect username or password');window.location='index.aspx'", true);

                    }

                }
            }


        }
    }
}