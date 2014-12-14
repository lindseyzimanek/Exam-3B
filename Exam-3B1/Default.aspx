<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>

        <link rel="stylesheet" type="text/css" href="~/StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">
<header>
<h1><asp:Label ID="lbl_welcome" runat="server" Text="<%$ Resources:Resources, lbl_welcome %>"></asp:Label></h1>
<h2><asp:Label ID="lbl_course" runat="server" Text="<%$ Resources:Resources, lbl_courses %>"></asp:Label></h2>
</header>

<div id="content">

<section>
<div>
    <asp:Label ID="lbl_language" runat="server" Text="<%$ Resources:Resource, ChooseLanguage %>"></asp:Label>

    <br />

    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
       <asp:ListItem value="ar-sa">Arabic</asp:ListItem>
       <asp:ListItem Value="zh-tw">Chinese</asp:ListItem>
       <asp:ListItem Value="en-US">English</asp:ListItem>
       <asp:ListItem Value="es-mx">Spanish</asp:ListItem>
    </asp:CheckBoxList>
</div>
</section>

<aside>
      <asp:Label ID="lbl_name" runat="server" Text="<%$ Resources:Resources, MyName %>"></asp:Label>
     <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>

    <br />
    <br />

     <asp:Label ID="lbl_gender" runat="server" Text="<%$ Resources:Resources, Gender %>"></asp:Label>
     <asp:RadioButtonList ID="rbtn_gender" runat="server">
         <asp:ListItem>Male</asp:ListItem>
         <asp:ListItem>Female</asp:ListItem>
     </asp:RadioButtonList>

    <br />

    <asp:Label ID="lbl_graduate" runat="server" Text="<%$ Resources:Resources, Graduate %>"></asp:Label>
    <asp:Calendar ID="cal_graduate" runat="server"></asp:Calendar>

    <br />

    <asp:Label ID="lbl_salary" runat="server" Text="<%$ Resources:Resources, Salary %>"></asp:Label>
    <asp:TextBox ID="tb_salary" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Button ID="btn_submit" runat="server" Text="<%$ Resources:Resources, btn_submit %>" />

 </aside>
</div>


<br />

 <div id="footer">
    <footer>
    &copy; Lindsey Zimanek 2014
    </footer>
</div>

</form>
</body>
</html>
