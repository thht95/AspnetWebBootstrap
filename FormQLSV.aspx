<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormQLSV.aspx.cs" Inherits="QLSV.FormQLSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" />
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

    
    <title></title>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center"> Quản lý Sinh Viên </h1>
        <div class="form-group">
             <a href="/Themsinhvien.aspx?ID=<%#Eval("ID")%>" class="btn btn-success">Thêm sinh viên</a>
        </div>
        <form id="form1" runat="server">
            <table class="table table-striped mt-5" id="myTable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Mã sinh viên</th>
                        <th>Tên sinh viên</th>
                        <th>Lớp</th>
                        <th>Địa chỉ</th>
                        <th>Điểm</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater runat="server" ID="rpt">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("ID")%></td>
                                <td><%#Eval("MaSV")%></td>
                                <td><%#Eval("TenSV")%></td>
                                <td><%#Eval("Lop")%></td>
                                <td><%#Eval("Diachi")%></td>
                                <td><%#Eval("Diem")%></td>
                                <td>
                                    <a href="/Suasinhvien.aspx?ID=<%#Eval("ID")%>" class="btn btn-warning">Sửa</a>
                                    <a href="/XoaSinhvien.aspx?ID=<%#Eval("ID")%>" class="btn btn-danger">Xoá</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </form>
    </div>
</body>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
    });
</script>
</html>
