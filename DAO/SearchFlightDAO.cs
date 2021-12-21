using System;
using System.Data;
using System.Data.SqlClient;
namespace DAO
{
    public class SearchFlightDAO
    {
        readonly string str = @"Data Source=ARCHANA_PC\SQLEXPRESS;Initial Catalog=ARSDB;Integrated Security=True";

        public DataSet Country_Bind()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SpSearchBind_Country", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }
        public DataSet City_Bind(string countryname)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SpSearchBind_City", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@CountryName", SqlDbType.VarChar).Value = countryname;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }
        public DataSet SearchFlightGridBind(String SourceCity, String DestinationCity)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetSearchFlightBind", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@FSource", SqlDbType.VarChar).Value = SourceCity;
            cmd.Parameters.Add("@FDestination", SqlDbType.VarChar).Value = DestinationCity;
            //cmd.Parameters.Add("@UserTypeId", SqlDbType.Int).Value = int.Parse(usertype);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }
    }
}
