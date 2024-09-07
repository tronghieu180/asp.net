<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="pageGIOHANG.aspx.cs" Inherits="baitap_thtkwnc.pageGIOHANG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="center_content">
     <div class="center_title_bar">Shopping cart</div>
    <asp:GridView ID="grvCART" runat="server" AutoGenerateColumns="False"   CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="true">
       <AlternatingRowStyle BackColor="white" />
        <Columns>
            <asp:BoundField DataField="MASANPHAM" HeaderText="Mã s&#7843;n ph&#7849;m" />
            <asp:BoundField DataField="TENSANPHAM" HeaderText="Tên s&#7843;n ph&#7849;m" />
            <asp:BoundField DataField="SOLUONG" HeaderText="S&#7889; l&#432;&#7907;ng" />
            <asp:BoundField DataField="DONGIA" HeaderText="&#272;&#417;n giá" />
            <asp:BoundField DataField="THANHTIEN" HeaderText="Thành ti&#7873;n" />
            <asp:ImageField DataAlternateTextField="HINHANH" DataImageUrlField="HINHANH" DataImageUrlFormatString="IMAGES/{0}" HeaderText="Hình &#7843;nh">
            </asp:ImageField>
            <asp:TemplateField HeaderText="Xoá">
                <ItemTemplate>
                    <asp:CheckBox ID="ckbREMOVEITEM" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor ="#2461bf" />
        <FooterStyle BackColor ="#507cd1" Font-bold ="true" ForeColor ="White" />
        <HeaderStyle BackColor ="#507cd1" Font-bold ="true" ForeColor ="White" />
        <PagerStyle BackColor ="#2461bf" ForeColor ="White" HorizontalAlign ="center" />
        <RowStyle BackColor="#eff3f8" />
        <SelectedRowStyle BackColor="#d1ddf1" Font-Bold="true" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#f5f7f8" />
        <SortedAscendingHeaderStyle BackColor="#6d95e1" />
        <SortedDescendingCellStyle BackColor="#e9ebef" />
        <SortedDescendingHeaderStyle BackColor="#4870be" />
    </asp:GridView>
    <asp:Button ID ="btnDELETE" runat="server" Text="Trả hàng" OnClick="btnDELETE_Click"/>
</div>
</asp:Content>

