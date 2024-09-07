<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUANLYSANPHAM_GUI.aspx.cs" Inherits="baitap_thtkwnc.ADMIN.GUI.QUANLYSANPHAM_GUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 100%;
            height: 88px;
        }
        .auto-style3 {
            width: 206px;
        }
        .auto-style4 {
            height: 26px;
            width: 206px;
        }
        .auto-style5 {
            height: 186px;
            width: 206px;
        }
        .auto-style6 {
            height: 186px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Mã danh mục"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpDANHMUC" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Mã sản phẩm"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMASANPHAM" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Tên sản phẩm "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtTENSANPHAM" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Đơn giá "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDONGIA" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Text="Số lượng"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtSOLUONG" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label6" runat="server" Text="Upload ảnh"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:FileUpload ID="FileANHSANPHAM" runat="server" />
                    </td>
                    <td class="auto-style1"></td>
                    </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="MÔ TẢ"></asp:Label>
                        </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMOTA" runat="server" Height="153px" Width="1107px"></asp:TextBox>
                        </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnInsert" runat="server" Text="INSERT" OnClick="btnInsert_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="DELETE" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" OnClick="btnUpdate_Click" />
                        </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:GridView ID="grvSANPHAM" runat="server" Height="205px" Width="1117px">
                            <Columns>
                                <asp:BoundField DataField="MASANPHAM" HeaderText="Mã sản phẩm" />
                                <asp:BoundField DataField="TENSANPHAM" HeaderText="Tên sản phẩm" />
                                <asp:BoundField DataField="DONGIA" HeaderText="Đơn giá" />
                                <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" />
                                <asp:ImageField DataAlternateTextField="HINHANH" DataImageUrlField="HINHANH" DataImageUrlFormatString="inages/{0}" HeaderText="Hình ảnh">
                                </asp:ImageField>
                            </Columns>
                            <HeaderStyle BackColor="#99CCFF" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                        </td>
                    <td class="auto-style1"></td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
