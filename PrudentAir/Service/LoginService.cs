using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using IService;


namespace Service
{  
   public class LoginService
    {
        LoginDAO ld=null;
               
       public int ChkLoginService(string uname, string pwd)
        {
            ld = new LoginDAO();
            return ld.ChkLogin(uname, pwd);
        }

    }
}
