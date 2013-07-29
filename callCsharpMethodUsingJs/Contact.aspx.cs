using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace callCsharpMethodUsingJs
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string getName()
        {
            var getAddress = new Contact();
          return  getAddress.getAddress();
         //   return "Crm Supervisor";
        }
      
        protected string getAddress()
        {
            return "BEYOĞLU";
        }
    

    }
}