using DAO;
using System.Data;

namespace Service
{
    public class PNREnquiryService
    {
        PNREnquiryDAO ped = null;
        public DataSet PNREnquiryRecordService(string pnr)
        {
            ped = new PNREnquiryDAO();
            return ped.PNREquiryRecord(pnr);
        }
    }
}
