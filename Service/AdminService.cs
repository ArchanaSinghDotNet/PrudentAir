using DAO;
using System;
using System.Data;

namespace Service
{
    public class AdminService
    {
        AdminDAO ad = null;
        DataSet ds = null;
        public DataSet EmployeeGridBindService()
        {
            ad = new AdminDAO();
            return ad.EmployeeGridBind();
        }

        public void InsertEmployeeRecordService(String Ename, String ELast, String Uid, String Address, String ContactNumber, String Password, String dob)
        {
            ad = new AdminDAO();
            ad.InsertEmployeeRecord(Ename, ELast, Uid, Address, ContactNumber, Password, dob);
        }

        public void UpdateEmployeeRecordService(String Eid, String Ename, String ELast, String Uid, String Address, String ContactNumber, String Password, String dob)
        {
            ad = new AdminDAO();
            ad.UpdateEmployeeRecord(Eid, Ename, ELast, Uid, Address, ContactNumber, Password, dob);
        }

        public void DeleteEmployeeRecordService(String Eid)
        {
            ad = new AdminDAO();
            ad.DeleteEmployeeRecord(Eid);
        }

        public DataSet UserTypeBindService()
        {
            ad = new AdminDAO();
            ds = ad.UserTypeBind();
            return ds;
        }

        public void CreateUserService(String loginname, String username, String usertype)
        {
            ad = new AdminDAO();
            ad.CreateUser(loginname, username, usertype);
        }
        public int chkLogin_nameService(String loginname)
        {
            ad = new AdminDAO();
            return ad.ChkLogin_name(loginname);
        }
        public DataSet Search_UsernameService(string Username)
        {
            ad = new AdminDAO();
            return ad.Search_Username(Username);
        }
        public void Delete_Username(string userid)
        {
            ad = new AdminDAO();
            ad.Delete_Username(userid);
        }

        public DataSet GetAllUserNameService(string Username)
        {
            ad = new AdminDAO();
            return ad.GetAllUserName(Username);
        }

        public DataSet UserGridBindService()
        {
            ad = new AdminDAO();
            return ad.UserGridBind();
        }

        public DataSet Country_Bind()
        {
            ad = new AdminDAO();
            return ad.Country_Bind();
        }
        public DataSet City_Bind(string countryname)
        {
            ad = new AdminDAO();
            return ad.City_Bind(countryname);
        }
        public void Create_FlightService(String Source, String Destination, String Bussinessfare, String Economicfare, String Arrivaltime, String Departuretime, String Bussinesscapacity, string Economiccapacity)
        {
            ad = new AdminDAO();
            ad.Create_Flight(Source, Destination, Bussinessfare, Economicfare, Arrivaltime, Departuretime, Bussinesscapacity, Economiccapacity);
        }
        public DataSet RevenueForAllFlightService()
        {
            ad = new AdminDAO();
            return ad.RevenueForAllFlight();
        }

        public DataSet FlightGridBindService()
        {
            ad = new AdminDAO();
            return ad.FlightGridBind();
        }

        public void UpdateFlightRecordService(string FNo, string FSource, string FDestination, string FBusinessCapacity, string FEconomicCapacity, string BussinessFare, string EcoFare, string FArrivalTime, string FDepartureTime)
        {
            ad = new AdminDAO();
            ad.UpdateFlightRecord(FNo, FSource, FDestination, FBusinessCapacity, FEconomicCapacity, BussinessFare, EcoFare, FArrivalTime, FDepartureTime);
        }
        public void DeleteFlightRecordService(String FNo)
        {
            ad = new AdminDAO();
            ad.DeleteFlightRecord(FNo);
        }

    }
}
