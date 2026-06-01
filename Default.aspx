<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YamurShopWeb.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Yamur Shopping - پەیجێ سەرەکی</title>
    <style>
        body { font-family: Tahoma, Arial, sans-serif; background-color: #f4f4f4; direction: rtl; margin: 0; padding: 20px; }
        .header { background-color: #333; color: white; text-align: center; padding: 15px; margin-bottom: 30px; }
        .products-container { display: flex; flex-wrap: wrap; gap: 20px; justify-content: center; }
        .product-card { background: white; border: 1px solid #ddd; border-radius: 8px; width: 250px; padding: 15px; text-align: center; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        .product-image { max-width: 100%; height: 200px; object-fit: contain; border-radius: 4px; }
        .product-title { font-size: 18px; margin: 10px 0; color: #333; }
        .product-price { color: #e67e22; font-size: 16px; font-weight: bold; margin-bottom: 15px; }
        .view-btn { display: inline-block; background-color: #2ecc71; color: white; padding: 8px 15px; text-decoration: none; border-radius: 4px; font-size: 14px; }
        .view-btn:hover { background-color: #27ae60; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>بخێرهێیی بۆ Yamur Shopping</h1>
        </div>

        <div class="products-container">
            <asp:Repeater ID="RepeaterProducts" runat="server">
                <ItemTemplate>
                    <div class="product-card">
                        <img src='images/<%# Eval("image_name") %>' class="product-image" alt='<%# Eval("item_name") %>' />
                        <h2 class="product-title"><%# Eval("item_name") %></h2>
                        <p class="product-price"><%# string.Format("{0:N0}", Eval("price")) %> د.ع</p>
                        <a href='ProductDetails.aspx?id=<%# Eval("id") %>' class="view-btn">بینینا بەرهەمی</a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>