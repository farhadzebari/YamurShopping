<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="OrderForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Yamur Shopping - تەمامکرنا داخازیێ</title>
    <style>
        body { font-family: Tahoma, Arial, sans-serif; background-color: #f4f4f4; direction: rtl; padding: 20px; }
        .form-container { background: white; max-width: 500px; margin: 50px auto; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); text-align: center; }
        .form-group { text-align: right; margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; font-weight: bold; color: #555; }
        .form-control { width: 100%; padding: 10px; box-sizing: border-box; border: 1px solid #ccc; border-radius: 4px; font-family: Tahoma; }
        .submit-btn { display: inline-block; width: 100%; background-color: #2ecc71; color: white; padding: 12px; border: none; border-radius: 4px; font-weight: bold; font-size: 16px; cursor: pointer; margin-top: 15px; }
        .submit-btn:hover { background-color: #27ae60; }
        .success-msg { color: #27ae60; font-weight: bold; margin-top: 15px; display: block; }
        .back-link { display: inline-block; margin-top: 15px; color: #666; text-decoration: none; font-size: 14px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>📝 فۆڕما تەمامکرنا داخازیێ</h2>
            <p style="color:#e67e22; font-weight:bold;">تو هۆسا داخاز دکەی: <asp:Label ID="LblProdName" runat="server"></asp:Label></p>
            <hr />
            
            <div class="form-group">
                <label>ناڤێ تە یێ سیانی:</label>
                <asp:TextBox ID="TxtName" runat="server" class="form-control" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>ژمارەیا تەلەفۆنێ:</label>
                <asp:TextBox ID="TxtPhone" runat="server" class="form-control" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>ناونیشان (باژار / گەڕەک):</label>
                <asp:TextBox ID="TxtAddress" runat="server" class="form-control" TextMode="MultiLine" Rows="2" required="true"></asp:TextBox>
            </div>
            
            <asp:Button ID="BtnSubmit" runat="server" Text="پشڕاستکرنا کڕینێ" class="submit-btn" OnClick="BtnSubmit_Click" />
            <asp:Label ID="LblMessage" runat="server" class="success-msg"></asp:Label>
            <br />
            <a href="Default.aspx" class="back-link">← پاشگەزبوون و زڤڕین</a>
        </div>
    </form>
</body>
</html>