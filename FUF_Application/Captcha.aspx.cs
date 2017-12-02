using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

namespace FUFApplication
{
    public partial class Captcha : System.Web.UI.Page
    {
       
    protected void Page_Load(object sender, EventArgs e)
    {

        Font f = new Font("Eras Demi ITC", 18);
        Bitmap b = new Bitmap(130, 45);
        Graphics g = Graphics.FromImage(b);

        g.Clear(Color.CornflowerBlue);
        String CaptchaString = generateRandomString();
        Session.Add("CAPTCHA", CaptchaString);

        g.DrawString(CaptchaString, f, Brushes.White, 10, 8);

        Response.ContentType = "Image/GIF";
        b.Save(Response.OutputStream, ImageFormat.Gif);

        f.Dispose();
        b.Dispose();
        g.Dispose();


    }
    public String generateRandomString()
    {
        String Result = "";
        String str = "a,c,d,e,f,h,j,k,m,p,q,r,s,t,w,x,y,z,2,3,4,5,7,8,A,B,D,E,F,H,J,K,M,P,Q,R,S,T,W,X,Y,Z";
        String[] arr = str.Split(',');

        Random r = new Random();
        for (int i = 0; i < 6; i++)
        {
            int num = r.Next(0, arr.Length);
            Result += arr[num];
        }


        return Result;
    }

        }
    }
