<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/ThemSinhvien.aspx.cs" Inherits="QLSV.ThemSinhvien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    <title></title>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center"> Quản lý Sinh Viên </h1>
        <form id="form1" runat="server">
            <div class="form-row mt-4" > 
                <div class="form-group col-md-6">
                    <label id="lblMASV" for="txtMa">Mã Sinh viên</label>
                    <asp:TextBox CssClass="form-control" runat="server" ID="txtMa" name="txtMaSV"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtTen">Tên Sinh viên</label>
                    <asp:TextBox CssClass="form-control" runat="server" ID="txtTen" name="txtName"></asp:TextBox>
                </div>
            </div>

            <div class="form-row"> 
                <div class="form-group col-md-6">
                    <label for="txtLop">Lớp</label>
                    <asp:TextBox CssClass="form-control" runat="server" ID="txtLop" name="txtLop"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtDiem">Điểm</label>
                    <asp:TextBox CssClass="form-control" runat="server" ID="txtDiem" name="txtDiem"></asp:TextBox>
                </div>
            </div>

            <div class="form-row"> 
                <div class="form-group col-md-12">
                    <label for="txtDiachi">Địa chỉ</label>
                    <asp:TextBox CssClass="form-control" runat="server" ID="txtDiachi" name="txtDiachi"></asp:TextBox>
                </div>
            </div>
                
            <div class="form-group">
                <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Thêm" CssClass="btn btn-success"/>
            </div>
        </form>
    </div>
</body>
</html>
