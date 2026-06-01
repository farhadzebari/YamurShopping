using System;
using MySql.Data.MySqlClient;

namespace YamurShopWeb
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string productId = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(productId))
                {
                    LoadProductDetails(productId);
                }
            }
        }

        private void LoadProductDetails(string id)
        {
            string constr = "Server=localhost;Database=yamurshopdb;Uid=root;Pwd=;";
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM product WHERE id = @id", con))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    con.Open();
                    using (MySqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            LblTitle.Text = dr["item_name"].ToString();
                            LblPrice.Text = string.Format("{0:N0}", dr["price"]);
                            LblDesc.Text = dr["description"].ToString();
                            ImgProduct.ImageUrl = "images/" + dr["image_name"].ToString();

                            BtnGoToForm.NavigateUrl = "OrderForm.aspx?pname=" + Server.UrlEncode(dr["item_name"].ToString());
                        }
                    }
                }
            }
        }
    }
}