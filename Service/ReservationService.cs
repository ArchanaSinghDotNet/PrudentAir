using DAO;
using System.Data;

namespace Service
{
    public class ReservationService
    {
        ReservationDAO ped = null;
        public DataSet DatasetReservationFlightNameBindService()
        {
            ped = new ReservationDAO();
            return ped.DatasetReservationFlightNameBind();
        }
    }
}
