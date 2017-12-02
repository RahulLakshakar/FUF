using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace FUFApplication.App_Code
{
    public class FUF_User
    {
        public DataSet ExecuteQuery_DataSet(string strQuery, string cTable)
        {
            string myconn = ConfigurationManager.ConnectionStrings["FUF_connectionstring"].ConnectionString;
            SqlConnection con = new SqlConnection(myconn);

            SqlCommand com = new SqlCommand(strQuery, con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            con.Open();
            try
            {
                da.Fill(ds, cTable);
            }

            catch (Exception e)
            {
                throw (e);
            }
            finally
            {
                com.Connection.Close();
                com.Dispose();
                con.Close();
                con.Dispose();
            }
            return ds;
        }

        public int ExecuteQuery_Update(string strQuery)
        {
            string myconn = ConfigurationManager.ConnectionStrings["FUF_connectionstring"].ConnectionString;
            SqlConnection con = new SqlConnection(myconn);

            SqlCommand com = new SqlCommand(strQuery, con);
            con.Open();
            try
            {
                com.ExecuteNonQuery();
            }
            catch (Exception e)
            {

                throw (e);
            }
            finally
            {
                con.Close();
                com.Connection.Close();
                com.Dispose();
            }
            return 0;
        }

        public int ExecuteQuery_ExecuteScalar(string strQuery)
        {
            string myConnStr = ConfigurationManager.ConnectionStrings["FUF_connectionstring"].ConnectionString;
            SqlConnection myConn = new SqlConnection(myConnStr);
            myConn.Open();
            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = myConn;
            myCommand.CommandText = strQuery;
            int rv = 0;
            try
            {
                rv = Convert.ToInt32(myCommand.ExecuteScalar());
            }
            catch (Exception ex)
            {
            }
            finally
            {
                myConn.Close();
                myCommand.Dispose();
                myConn.Dispose();
            }

            return rv;
        }
    }
}