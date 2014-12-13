<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>

        <link rel="stylesheet" type="text/css" href="~/StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">
<header>
<h1>Welcome to MSCI:3300</h1>
<h2>Software Design and Development</h2>
</header>

<div id="content">

<section>
<div>
    <asp:Label ID="lbl_language" runat="server" Text="Please choose your language:"></asp:Label>

    <br />

    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
       <asp:ListItem>Arabic</asp:ListItem>
       <asp:ListItem>Chinese</asp:ListItem>
       <asp:ListItem>English</asp:ListItem>
       <asp:ListItem>Spanish</asp:ListItem>
    </asp:CheckBoxList>
</div>
</section>

<aside>
      <asp:Label ID="lbl_name" runat="server" Text="My name is: "></asp:Label>
     <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>

    <br />
    <br />

     <asp:Label ID="lbl_gender" runat="server" Text="I am: "></asp:Label>
     <asp:RadioButtonList ID="rbtn_gender" runat="server">
         <asp:ListItem>Male</asp:ListItem>
         <asp:ListItem>Female</asp:ListItem>
     </asp:RadioButtonList>

    <br />

    <asp:Label ID="lbl_graduate" runat="server" Text="I plan to graduate on: "></asp:Label>
    <asp:Calendar ID="cal_graduate" runat="server"></asp:Calendar>

    <br />

    <asp:Label ID="lbl_salary" runat="server" Text="When I graduate, I hope to earn "></asp:Label>
    <asp:TextBox ID="tb_salary" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Button ID="btn_submit" runat="server" Text="Submit" />

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
