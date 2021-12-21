using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class HomeDAO
    {
        readonly string str = @"Data Source=ARCHANA_PC\SQLEXPRESS;Initial Catalog=ARSDB;Integrated Security=True";
        public DataSet PopularFlightNo()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetMostPopularFlight", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }
        public DataSet UserReservationInfo(string loginname)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetUserReservationInfo", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@LoginName", SqlDbType.VarChar).Value = loginname;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }
    }
}
