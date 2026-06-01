using System;
using MySql.Data.MySqlClient;

public partial class OrderForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // وەرگرتنا ناڤێ بەرهەمی ژ ڕێڕەوی
            string pname = Request.QueryString["pname"];
            if (!string.IsNullOrEmpty(pname))
            {
                LblProdName.Text = pname;
            }
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        string constr = "Server=localhost;Database=yamurshopdb;Uid=root;Pwd=;";
        using (MySqlConnection con = new MySqlConnection(constr))
        {
            string query = "INSERT INTO orders (customer_name, phone_number, address, product_name) VALUES (@name, @phone, @address, @pname)";
            using (MySqlCommand cmd = new MySqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@name", TxtName.Text);
                cmd.Parameters.AddWithValue("@phone", TxtPhone.Text);
                cmd.Parameters.AddWithValue("@address", TxtAddress.Text);
                cmd.Parameters.AddWithValue("@pname", LblProdName.Text);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        LblMessage.Text = "🎉 داخازیا تە ب سەرکەفتن هاتە تۆمارکرن!";
        TxtName.Text = "";
        TxtPhone.Text = "";
        TxtAddress.Text = "";
    }
}