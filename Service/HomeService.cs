using DAO;
using System.Data;

namespace Service
{
    public class HomeService
    {
        HomeDAO ad = null;
        // DataSet ds = null;
        public DataSet PopularFlightNoService()
        {
            ad = new HomeDAO();
            return ad.PopularFlightNo();
        }
        public DataSet UserReservationInfoService(string loginname)
        {
            ad = new HomeDAO();
            return ad.UserReservationInfo(loginname);
        }
    }
}
