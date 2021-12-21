using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class PNREnquiryDAO
    {
        readonly string str = @"Data Source=ARCHANA_PC\SQLEXPRESS;Initial Catalog=ARSDB;Integrated Security=True";
        public DataSet PNREquiryRecord(string pnr)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetGetPNRNoInfo", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@PNR", SqlDbType.VarChar).Value = pnr;
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            adpt.Fill(ds);
            return ds;
        }
    }
}
