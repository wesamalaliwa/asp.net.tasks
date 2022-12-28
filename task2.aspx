<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="ASP.NET_TASKS.task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <div>
           
            <div class="input-group mb-3">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
           
<%--                <asp:Button ID="Button1" runat="server" OnClick="ccc"  Text="Button" />--%>
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
</div>
        </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
