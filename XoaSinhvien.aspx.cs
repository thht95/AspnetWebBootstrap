using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSV
{
    public partial class XoaSinhvien : System.Web.UI.Page
    {
        QuanLySinhVienEntities context = new QuanLySinhVienEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            var sinhvien = context.tblSinhViens.Find(id);
            context.tblSinhViens.Remove(sinhvien);
            context.SaveChanges();

            Response.Redirect("/FormQLSV.aspx");
        }
    }
}