<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task4.aspx.cs" Inherits="ASP.NET_TASKS.task4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <style>
        #lblDateTime{
            border:solid  2px;
        }
        #Label1{
            display:none;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-top:200px; padding-left:530px;">
                  <div>
            <asp:Label ID="lblDateTime" runat="server" Font-Size="50px"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="ddlColors" runat="server" OnSelectedIndexChanged="ddlColors_SelectedIndexChanged">
                <asp:ListItem>yellow</asp:ListItem>
                <asp:ListItem>blue</asp:ListItem>
                <asp:ListItem>green</asp:ListItem>
                <asp:ListItem>red</asp:ListItem>
                <asp:ListItem>black</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button2"  runat="server" Text="Button" OnClick="Button1_Click" />

<%--            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>


            <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
        </div>
         
        </div>
    </form>
</body>
</html>

