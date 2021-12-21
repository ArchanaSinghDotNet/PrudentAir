using DAO;


namespace Service
{
    public class LoginService
    {
        LoginDAO ld = null;

        public int ChkLoginService(string uname, string pwd)
        {
            ld = new LoginDAO();
            return ld.ChkLogin(uname, pwd);
        }

    }
}
