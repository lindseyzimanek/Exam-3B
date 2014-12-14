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
    <asp:Label ID="lbl_language" runat="server" meta:resourceKey="lbl_language"></asp:Label>

    <br />

    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
       <asp:ListItem value="ar-sa">Arabic</asp:ListItem>
       <asp:ListItem Value="zh-tw">Chinese</asp:ListItem>
       <asp:ListItem Value="en-US">English</asp:ListItem>
       <asp:ListItem Value="es-mx">Spanish</asp:ListItem>
    </asp:CheckBoxList>
</div>
</section>

<%If Not IsPostBack Then%>

<aside>
     <asp:Label ID="lbl_name" runat="server" meta:resourceKey="lbl_name"></asp:Label>
     <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>

    <br />
    <br />

     <asp:Label ID="lbl_gender" runat="server" meta:resourceKey="lbl_gender"></asp:Label>        
     <asp:RadioButton ID="rbtn_male" runat="server" meta:resourceKey="rbtn_male" GroupName="gender" Checked="True"/>
     <asp:RadioButton ID="rbtn_female" runat="server" meta:resourceKey="rbtn_female" GroupName="gender" />
    
    <br />

    <asp:Label ID="lbl_graduate" runat="server" meta:resourceKey="lbl_graduate"></asp:Label>
    <asp:Calendar ID="cal_graduate" runat="server"></asp:Calendar>

    <br />

    <asp:Label ID="lbl_salary" runat="server" meta:resourceKey="lbl_salary"></asp:Label>
    <asp:TextBox ID="tb_salary" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Button ID="btn_submit" runat="server" meta:resourceKey="btn_submit"/>

 </aside>
</div>

<%Else%>

    <asp:Label ID="lbl_hello" runat="server" meta:resourceKey="lbl_hello"></asp:Label> <asp:Label ID="lbl_nameTitle" runat="server"></asp:Label> <asp:Label ID="lbl_nameOutput" runat="server"></asp:Label>
    
    <br />
    <br />

    <asp:Label ID="lbl_graduateResponse" runat="server" meta:resourceKey="lbl_graduateResponse"></asp:Label>
    <asp:Label ID="lbl_calendarResponse" runat="server"></asp:Label>

    <br />
    <br />

    <asp:Label ID="lbl_salaryResponse" runat="server" meta:resourceKey="lbl_salaryResponse"></asp:Label> <asp:Label ID="lbl_expectedSalary" runat="server"></asp:Label> <asp:Label ID="lbl_salaryResponse2" runat="server" meta:resourceKey="lbl_salaryResponse2"></asp:Label>

    <asp:Label ID="lbl_github" runat="server" meta:resourceKey="lbl_github"></asp:Label> <a href="https://github.com/lindseyzimanek">GitHub</a>


<%End If%>

<br />

 <div id="footer">
    <footer>
    &copy; Lindsey Zimanek 2014
    </footer>
</div>

</form>
</body>
</html>
