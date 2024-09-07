using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace baitap_thtkwnc
{
    public partial class pageGIOHANG : System.Web.UI.Page
    {
        public void loadCart()
        {
            CART cart = (CART)Session["CART"];
            this.grvCART.DataSource = cart.LISTCARTS.Values.ToList();
            this.grvCART.DataBind();
            this.grvCART.FooterRow.Cells[0].Text = "Tổng tiền";
            this.grvCART.FooterRow.Cells[4].Text = cart.TotalBill().ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LOGIN"] != null)
            {
                DataTable tbLogin = (DataTable)Session["LOGIN"];
                if (!IsPostBack && tbLogin.Rows.Count > 0)
                {
                    loadCart();
                }
                else
                {
                    Response.Redirect("DANHSACHSANPHAM.aspx");
                }
            }

        }

        protected void btnDELETE_Click(object sender, EventArgs e)
        {
            CART cart = (CART)Session["CART"];
            foreach(GridViewRow row in grvCART.Rows)
            {
                CheckBox ckb = (CheckBox)row.FindControl("ckbREMOVEITEM");
                if (ckb.Checked)
                {
                    string masanpham = row.Cells[0].Text;
                    cart.RemoveCart(masanpham);
                }
            }
            Session["CART"] = cart;
            loadCart();
        }

        
    }
}