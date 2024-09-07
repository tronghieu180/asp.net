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
    public partial class CHITIETSANPHAM : System.Web.UI.Page
    {
        DataTable tbSANPHAM;
        protected void Page_Load(object sender, EventArgs e)
        {
            //chi tiết sản phẩm
            XULYDULIEU xuly = new XULYDULIEU();
            string masanpham = Request.QueryString.Get("MASANPHAM");
            SqlParameter[] pr = new SqlParameter[1];
            pr[0] = new SqlParameter("@MASANPHAM", masanpham);
            tbSANPHAM = xuly.getTable("psGetTableSANPHAM", pr);
            this.Repeater1.DataSource = tbSANPHAM;
            this.Repeater1.DataBind();
            

            // list sản phẩm còn lại
            SqlParameter[] prs = new SqlParameter[1];
            prs[0] = new SqlParameter("@MASANPHAM", DBNull.Value);
            this.DataList1.RepeatColumns = 3;
            this.DataList1.DataSource = xuly.getTable("psGetTableSANPHAM", prs);
            this.DataList1.DataBind();
        }
        protected void Imagecart_Click(object sender, ImageClickEventArgs e)
        {
            
            Session.Timeout = 2;
            CART cart = new CART();
            if (tbSANPHAM != null)
            {
                string masanpham = tbSANPHAM.Rows[0]["MASANPHAM"].ToString();
                string tensanpham = tbSANPHAM.Rows[0]["TENSANPHAM"].ToString();
                double dongia = double.Parse(tbSANPHAM.Rows[0]["DONGIA"].ToString());
                string hinhanh = tbSANPHAM.Rows[0]["HINHANH"].ToString();
                if (Session["CART"] != null)
                    cart = (CART)Session["CART"];
                cart.AddCart(masanpham, tensanpham, hinhanh, 1, dongia);
                Session["CART"] = cart;
                Response.Redirect("pageGIOHANG.aspx");
            }

        }

    }
}