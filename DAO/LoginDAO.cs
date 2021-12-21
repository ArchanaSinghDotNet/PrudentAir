using System;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{

    public class LoginDAO
    {
        readonly string str = @"Data Source=ARCHANA_PC\SQLEXPRESS;Initial Catalog=ARSDB;Integrated Security=True";
        public int ChkLogin(String uname, String pwd)
        {
            int i = 0;
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("login_validate", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add(new SqlParameter("@Ename", SqlDbType.VarChar, 50, "Ename"));
            cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50, "Password"));
            cmd.Parameters["@Ename"].Value = uname.ToString();
            cmd.Parameters["@Password"].Value = pwd;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                i = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            }
            return i;
        }
    }
}
