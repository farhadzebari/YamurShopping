using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace YamurShopWeb
{
    public partial class AdminOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindOrdersGrid();
            }
        }

        private void BindOrdersGrid()
        {
            string constr = "Server=localhost;Database=yamurshopdb;Uid=root;Pwd=;";
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM orders ORDER BY id DESC", con))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridOrders.DataSource = dt;
                        GridOrders.DataBind();
                    }
                }
            }
        }
    }
}