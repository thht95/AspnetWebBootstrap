using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSV
{
    public partial class Suasinhvien : System.Web.UI.Page
    {
        QuanLySinhVienEntities context = new QuanLySinhVienEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id =  Convert.ToInt32(Request.QueryString["ID"]);
            tblSinhVien sv = context.tblSinhViens.Find(id);
            txtMa.Text = sv.MaSV;
            txtTen.Text = sv.TenSV;
            txtDiachi.Text = sv.Diachi;
            txtDiemThi.Text = sv.Diem.ToString();
            txtLop.Text = sv.Lop;

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            tblSinhVien sv = context.tblSinhViens.Find(id);
            
            sv.MaSV = txtMa.Text;
            sv.TenSV = txtTen.Text;
            sv.Diachi = txtDiachi.Text;
            sv.Diem = Convert.ToDouble(txtDiemThi.Text);
            sv.Lop = txtLop.Text;
            
            context.SaveChanges();

            Response.Redirect("/FormQLSV.aspx");
        }
    }
}