using DAO;
using System.Data;

namespace Service
{
    public class FlightService
    {
        FlightDAO fd = null;
        // DataSet ds = null;
        public DataSet GetAvailableFlightsService()
        {
            fd = new FlightDAO();
            return fd.GetAvailableFlights();
        }
        public DataSet GetFlightInfoByFidService(string FNo)
        {
            fd = new FlightDAO();
            return fd.GetFlightInfoByFid(FNo);
        }
    }
}
