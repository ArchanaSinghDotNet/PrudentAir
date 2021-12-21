using DAO;
using System;
using System.Data;
namespace Service
{
    public class SearchFlightService
    {
        SearchFlightDAO sfd = null;
        // DataSet ds = null;
        public DataSet Country_Bind()
        {
            sfd = new SearchFlightDAO();
            return sfd.Country_Bind();
        }
        public DataSet City_Bind(string countryname)
        {
            sfd = new SearchFlightDAO();
            return sfd.City_Bind(countryname);
        }
        public DataSet SearchFlightGridBindService(String SourceCity, String DestinationCity)
        {
            sfd = new SearchFlightDAO();
            return sfd.SearchFlightGridBind(SourceCity, DestinationCity);
        }
    }
}
