using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class ReservationDAO
    {
        readonly string str = @"Data Source=ARCHANA_PC\SQLEXPRESS;Initial Catalog=ARSDB;Integrated Security=True";
        public DataSet DatasetReservationFlightNameBind()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetReservationFlightNameBind", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            adpt.Fill(ds);
            return ds;
        }
    }
}
