using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExamination
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       // [WebMethod]
        //public  string jqueryAjaxCall(string id)
        //{
        //    //Do coding staff.
        //    return id;
        //}
        //[System.Web.Services.WebMethod]
        //public  DataTable getdataDetails(int id)
        //{
        //    DataTable dt = new DataTable();
        //    return dt;
        //}

        [System.Web.Services.WebMethod]
        public static string GetCurrentTime(string name)
        {
            return "Hello " + name + Environment.NewLine + "The Current Time is: " +
                DateTime.Now.ToString();
        }
    }
}