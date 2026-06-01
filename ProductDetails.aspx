<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="YamurShopWeb.ProductDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Yamur Shopping - زانیاریێن بەرهەمی</title>
    <style>
        body { font-family: Tahoma, Arial, sans-serif; background-color: #f4f4f4; direction: rtl; padding: 20px; margin: 0; }
        .details-container { background: white; max-width: 500px; margin: 50px auto; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); text-align: center; }
        .product-img { max-width: 100%; height: 250px; object-fit: contain; margin-bottom: 20px; }
        .title { color: #333; font-size: 22px; margin: 10px 0; }
        .price { color: #e67e22; font-size: 18px; font-weight: bold; margin-bottom: 20px; }
        .desc-box { text-align: right; background: #fafafa; padding: 15px; border-radius: 4px; border-right: 4px solid #2ecc71; margin-top: 20px; font-size: 15px; line-height: 1.6; }
        
        .order-btn { display: inline-block; margin-top: 25px; background-color: #e67e22; color: white; padding: 12px 40px; text-decoration: none; border-radius: 4px; font-weight: bold; font-size: 16px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        .order-btn:hover { background-color: #d35400; }
        .back-link { display: inline-block; margin-top: 15px; color: #666; text-decoration: none; font-size: 14px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="details-container">
            <asp:Image ID="ImgProduct" runat="server" class="product-img" />
            <h1 class="title"><asp:Label ID="LblTitle" runat="server"></asp:Label></h1>
            <p class="price"><asp:Label ID="LblPrice" runat="server"></asp:Label> د.ع</p>
            <div class="desc-box">
                <strong>دەربارەی بەرهەمی:</strong>
                <p><asp:Label ID="LblDesc" runat="server"></asp:Label></p>
            </div>
            
            <asp:HyperLink ID="BtnGoToForm" runat="server" class="order-btn">داخاز بکە</asp:HyperLink>
            <br />
            <a href="Default.aspx" class="back-link">← زڤڕین بۆ پەیجێ سەرەکی</a>
        </div>
    </form>
</body>
</html>