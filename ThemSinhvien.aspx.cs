using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSV
{
    public partial class ThemSinhvien : System.Web.UI.Page
    {
        QuanLySinhVienEntities context = new QuanLySinhVienEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblSinhVien sv = new tblSinhVien();
            sv.MaSV = txtMa.Text;
            sv.TenSV = txtTen.Text;
            sv.Diachi = txtDiachi.Text;
            sv.Diem = Convert.ToDouble(txtDiem.Text);
            sv.Lop = txtLop.Text;

            context.tblSinhViens.Add(sv);
            context.SaveChanges();

            Response.Redirect("/FormQLSV.aspx");
        }
    }
}