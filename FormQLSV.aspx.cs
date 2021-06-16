using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSV
{
    public partial class FormQLSV : System.Web.UI.Page
    {
        QuanLySinhVienEntities context = new QuanLySinhVienEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpt.DataSource = context.tblSinhViens.ToList();
            rpt.DataBind();
        }
    }
}