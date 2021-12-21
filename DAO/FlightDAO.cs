using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class FlightDAO
    {

        readonly string str = @"Data Source=ARCHANA_PC\SQLEXPRESS;Initial Catalog=ARSDB;Integrated Security=True";
        public DataSet GetAvailableFlights()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetGetAvailableFlights", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }
        public DataSet GetFlightInfoByFid(string FNo)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetGetFlightInfoByFId", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@FNo", SqlDbType.VarChar).Value = FNo;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }
    }
}
