using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Login
/// </summary>
public class Log
{
    private string _userid;
    private string _password;
    private int _level;

    public Log(SqlDataReader rdr)
	{
        _userid = (string)rdr["UserId"];
        _password = (string)rdr["Password"];
        _level = (int)rdr["Level"];
	}
    public string getUserId
    {
        get { return _userid; }
    }
    public string getPassword
    {        
        get { return _password; }
    }
    public int getLevel
    {
        get { return _level; }
    }
}