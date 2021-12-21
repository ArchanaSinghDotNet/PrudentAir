using System;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class AdminDAO
    {
        readonly string str = @"Data Source=ARCHANA_PC\SQLEXPRESS;Initial Catalog=ARSDB;Integrated Security=True";
        public DataSet EmployeeGridBind()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetEmployeeBind", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }

        public void InsertEmployeeRecord(String Ename, String ELast, String Uid, String Address, String ContactNumber, String Password, String dob)
        {
            if (Uid != "")
            {

                SqlConnection con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand("SPInsertEmployee", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Ename", SqlDbType.VarChar).Value = Ename;
                cmd.Parameters.Add("@ELast", SqlDbType.VarChar).Value = ELast;
                cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = Address;
                cmd.Parameters.Add("@ContactNumber", SqlDbType.Decimal).Value = Convert.ToDecimal(ContactNumber == "" ? "0" : ContactNumber);
                cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = Convert.ToInt32(Uid);
                cmd.Parameters.Add("@Password ", SqlDbType.VarChar).Value = Password;
                cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = Convert.ToDateTime(dob);
                cmd.ExecuteNonQuery();
                con.Close();
            }

        }

        public void UpdateEmployeeRecord(String Eid, String Ename, String ELast, String Uid, String Address, String ContactNumber, String Password, String dob)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SPUpdateEmployee", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Eid", SqlDbType.Int).Value = Convert.ToInt32(Eid);
            cmd.Parameters.Add("@Ename", SqlDbType.VarChar).Value = Ename;
            cmd.Parameters.Add("@ELast", SqlDbType.VarChar).Value = ELast;
            cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = Address;
            cmd.Parameters.Add("@ContactNumber", SqlDbType.Decimal).Value = Convert.ToDecimal(ContactNumber);
            cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = Convert.ToInt32(Uid);
            cmd.Parameters.Add("@Password ", SqlDbType.VarChar).Value = Password;
            cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = Convert.ToDateTime(dob);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteEmployeeRecord(String Eid)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SPDeleteEmployee", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Eid", SqlDbType.Int).Value = Convert.ToInt32(Eid);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataSet UserTypeBind()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetUserTypeBind", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }

        public void CreateUser(String loginname, String username, String usertype)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SPInsertUser", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@LoginName", SqlDbType.VarChar).Value = loginname;
            cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = username;
            cmd.Parameters.Add("@UserTypeId", SqlDbType.Int).Value = int.Parse(usertype);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public int ChkLogin_name(String loginname)
        {
            int i = 0, total_record = 0;
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SPchkLogin_nameAviability", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            cmd.Parameters.Add("@LoginName", SqlDbType.VarChar).Value = loginname;
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            total_record = ds.Tables[0].Rows.Count;
            if (total_record > 0)
            {

                i = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            }
            return i;

        }
        public DataSet Search_Username(string Username)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SpSearch_UserName", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = Username;
            //cmd.Parameters.Add("@SpSearch_UserName", SqlDbType.VarChar).Value = UserId;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;

        }
        public void Delete_Username(string userid)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SpDelete_UserName", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = userid;
            cmd.ExecuteNonQuery();
            con.Close();
        }


        public DataSet GetAllUserName(string Username)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetGetAllUserNameByCritaria", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = Username;
            //cmd.Parameters.Add("@SpSearch_UserName", SqlDbType.VarChar).Value = UserId;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;

        }


        public DataSet UserGridBind()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetGetAllUserName", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }

        public DataSet Country_Bind()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SpBind_Country", con)
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
            SqlCommand cmd = new SqlCommand("SpBind_City", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@CountryName", SqlDbType.VarChar).Value = countryname;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }
        public void Create_Flight(String Source, String Destination, String Bussinessfare, String Economicfare, String Arrivaltime, String Departuretime, String Bussinesscapacity, String Economiccapacity)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SPCreateFlight", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Source", SqlDbType.VarChar).Value = Source;
            cmd.Parameters.Add("@Destination", SqlDbType.VarChar).Value = Destination;
            cmd.Parameters.Add("@FBusinessCapacity", SqlDbType.Int).Value = Convert.ToInt32(Bussinesscapacity);
            cmd.Parameters.Add("@FEconomicCapacity", SqlDbType.Int).Value = Convert.ToInt32(Economiccapacity);
            cmd.Parameters.Add("@FArrivalTime", SqlDbType.DateTime).Value = Convert.ToDateTime(Arrivaltime);
            cmd.Parameters.Add("@FDepartureTime", SqlDbType.DateTime).Value = Convert.ToDateTime(Departuretime);
            cmd.Parameters.Add("@BussinessFare ", SqlDbType.Money).Value = Convert.ToDecimal(Bussinessfare);
            cmd.Parameters.Add("@EcoFare", SqlDbType.Money).Value = Convert.ToDecimal(Economicfare);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataSet RevenueForAllFlight()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetGetRevenueForAllFlight", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }

        public DataSet FlightGridBind()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("DatasetFlightBind", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }

        public void UpdateFlightRecord(string FNo, string FSource, string FDestination, string FBusinessCapacity, string FEconomicCapacity, string BussinessFare, string EcoFare, string FArrivalTime, string FDepartureTime)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SPUpdateFlight", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@FNo", SqlDbType.VarChar).Value = FNo;
            cmd.Parameters.Add("@FSource", SqlDbType.VarChar).Value = FSource;
            cmd.Parameters.Add("@FDestination", SqlDbType.VarChar).Value = FDestination;
            cmd.Parameters.Add("@FBusinessCapacity", SqlDbType.Int).Value = Convert.ToInt32(FBusinessCapacity);
            cmd.Parameters.Add("@FEconomicCapacity", SqlDbType.Int).Value = Convert.ToInt32(FEconomicCapacity);
            cmd.Parameters.Add("@BussinessFare", SqlDbType.Money).Value = Convert.ToDecimal(BussinessFare);
            cmd.Parameters.Add("@EcoFare ", SqlDbType.Money).Value = Convert.ToDecimal(EcoFare);
            cmd.Parameters.Add("@FArrivalTime", SqlDbType.DateTime).Value = Convert.ToDateTime(FArrivalTime);
            cmd.Parameters.Add("@FDepartureTime", SqlDbType.DateTime).Value = Convert.ToDateTime(FDepartureTime);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void DeleteFlightRecord(String FNo)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SPDeleteFlight", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@FNo", SqlDbType.VarChar).Value = FNo;
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
