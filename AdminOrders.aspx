<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminOrders.aspx.cs" Inherits="YamurShopWeb.AdminOrders" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>پەنەلا کۆنترۆڵا داخازیان - Yamur Shopping</title>
    <style>
        body { font-family: Tahoma, Arial, sans-serif; background-color: #f4f4f4; direction: rtl; padding: 30px; }
        .admin-container { background: white; max-width: 1000px; margin: 0 auto; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { color: #2c3e50; border-bottom: 2px solid #34495e; padding-bottom: 10px; }
        
        /* ستایلێ خشتەی */
        .order-table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        .order-table th, .order-table td { padding: 12px; border: 1px solid #ddd; text-align: right; }
        .order-table th { background-color: #34495e; color: white; }
        .order-table tr:nth-child(even) { background-color: #f9f9f9; }
        .order-table tr:hover { background-color: #f1f1f1; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="admin-container">
            <h2>📦 ڕێزبەندا هەمی داخازیێن کڕیاران (ب تنێ بۆ خودان پەیجی)</h2>
            
            <asp:GridView ID="GridOrders" runat="server" AutoGenerateColumns="False" class="order-table">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="# ژمارە" />
                    <asp:BoundField DataField="customer_name" HeaderText="ناڤێ کڕیاری" />
                    <asp:BoundField DataField="phone_number" HeaderText="ژمارەیا تەلەفۆنێ" />
                    <asp:BoundField DataField="address" HeaderText="ناونیشان" />
                    <asp:BoundField DataField="product_name" HeaderText="بەرهەمێ داخازکری" />
                    <asp:BoundField DataField="order_date" HeaderText="دەم و ڕێکەوت" DataFormatString="{0:yyyy-MM-dd HH:mm}" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>