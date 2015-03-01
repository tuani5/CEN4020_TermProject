using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for Query
/// </summary>
public static class LoginQuery
{

    public static Log Get_Login(string user,out string message)
    {
        SqlDataReader rdr = null;
        SqlConnection cn = null;
        Log lg = null;

        try
        {
            cn = Setup_Connection();
            rdr = Get_Reader(cn,user);  // Perform the query
            message = "";
            if (rdr.Read())
            {
                lg = new Log(rdr);
            }
            else
            {
               message= " Error in Login.";
            }

        }
        catch (Exception ex)
        {
            message = " Error" + ex.Message;
        }
        finally
        {
            if (rdr != null)
            {
                rdr.Close();
            }

            if (cn != null)
            {
                cn.Close();
            }
        }
        return lg;
    }

    public static SqlConnection Setup_Connection()
    {
        String connection_string =
            WebConfigurationManager.ConnectionStrings["loginDatabase"].ConnectionString;

        SqlConnection cn = new SqlConnection(connection_string);

        cn.Open();
        return cn;

    }

    public static SqlDataReader Get_Reader(SqlConnection cn, string search)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM Login WHERE UserId=@user";
        cmd.Parameters.AddWithValue("@user", search);
        cmd.Connection = cn;
        return cmd.ExecuteReader();
    }
}