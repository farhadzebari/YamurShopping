using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace YamurShopWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }

        private void BindProducts()
        {
            string constr = "Server=localhost;Database=YamurShopDB;Uid=root;Pwd=;";

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM product", con))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        RepeaterProducts.DataSource = dt;
                        RepeaterProducts.DataBind();
                    }
                }
            }
        }
    }
}