<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="CHITIETSANPHAM.aspx.cs" Inherits="baitap_thtkwnc.CHITIETSANPHAM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- chi ti&#7871;t 1 s&#7843;n ph&#7849;m--%>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="center_title_bar"><%# Eval("TENSANPHAM") %></div>
            <div class="prod_box_big">
                <div class="top_prod_box_big"></div>
                <div class="center_prod_box_big">
                    <div class="product_img_big">
                        <a href="javascript:popImage('images/<%# Eval("HINHANH") %>','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]">
                            <img src="images/<%# Eval("HINHANH") %>" alt="" border="0" /></a>
                        <div class="thumbs">
                            <a href="#" title="header=[Thumb1] body=[&nbsp;] fade=[on]">
                                <img src="images/thumb1.gif" alt="" border="0" /></a> <a href="#" title="header=[Thumb2] body=[&nbsp;] fade=[on]">
                                    <img src="images/thumb2.gif" alt="" border="0" /></a> <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]">
                                        <img src="images/thumb1.gif" alt="" border="0" /></a>
                        </div>
                    </div>
                    <div class="details_big_box">
                        <div class="product_title_big"><%# Eval("MOTA") %></div>
                        <div class="specifications">
                            Disponibilitate: <span class="blue">In stoc</span><br />
                            Garantie: <span class="blue">24 luni</span><br />
                            Tip transport: <span class="blue">Mic</span><br />
                            Pretul include <span class="blue">TVA</span><br />
                        </div>
                        <div class="prod_price_big"><span class="reduce"><%# Eval("DONGIA") %></span> <span class="price">270$</span></div>
                      
                        
                            <asp:ImageButton ID="Imagecart" runat="server" ImageUrl="images/cart.gif" OnClick="Imagecart_Click" />
                        

                        <a href="#" class="compare">compare</a>
                    </div>
                </div>
                <div class="bottom_prod_box_big"></div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <%--danh sách s&#7843;n ph&#7849;m còn l&#7841;i--%>
    <div class="center_content">
        <div class="center_title_bar">Latest Products</div>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="prod_box">
                    <div class="top_prod_box"></div>
                    <div class="center_prod_box">
                        <div class="product_title"><a href=""><%# Eval("TENSANPHAM") %></a></div>
                        <div class="product_img">
                            <a href='CHITIETSANPHAM.aspx?MASANPHAM=<%# Eval("MASANPHAM") %>'>
                                <img src="images/<%# Eval("HINHANH") %>" alt="" border="0"
                                    width="100px" height="100px" /></a>
                        </div>
                        <div class="prod_price">
                            <span class="reduce"><%# Eval("DONGIA") %></span> <span
                                class="price">270$</span>
                        </div>
                    </div>
                    <div class="bottom_prod_box"></div>
                    <div class="prod_details_tab">
                        <a href="#" title="header=[Add to cart] body=[&nbsp;]
 fade=[on]">
                            <img src="images/cart.gif" alt="" border="0" class="left_bt" /></a>
                        <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]">
                            <img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#"
                                title="header=[Gifts] body=[&nbsp;] fade=[on]">
                                <img src="images/favorites.gif" alt="" border="0"
                                    class="left_bt" /></a> <a href='CHITIETSANPHAM.aspx?MASANPHAM=<%# Eval("MASANPHAM") %>' class="prod_details">details</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>


