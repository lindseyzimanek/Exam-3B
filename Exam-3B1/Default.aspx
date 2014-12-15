<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>

        <link rel="stylesheet" type="text/css" href="~/StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">

<div id="container">
<div id="header">
<h1><asp:Label ID="lbl_welcome" runat="server" Text="<%$ Resources:Resource, lbl_welcome %>"></asp:Label></h1>
<h2><asp:Label ID="lbl_course" runat="server" Text="<%$ Resources:Resource, lbl_course %>"></asp:Label></h2>
</div>

<div id="content">
    <table class="center">
        <tr>
            <td>

    <asp:Label ID="lbl_language" runat="server" meta:resourceKey="lbl_language"></asp:Label>

    <br />

    <asp:DropDownList ID="dropdown_languages" runat="server" AutoPostback="true" Width="100px">
                <asp:ListItem Value="ar-SA">Arabic</asp:ListItem>
                <asp:ListItem Value="zh">Chinese</asp:ListItem>
                <asp:ListItem Value="en-US" Selected="True">English</asp:ListItem>
                <asp:ListItem Value="es">Spanish</asp:ListItem>
    </asp:DropDownList>
    </td>

    <p></p>

    <td>
        
<asp:Panel ID="panel_questions" runat="server">
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

 </asp:Panel>


 <asp:Panel ID="panel_response" runat="server" Visible="false">
    <asp:Label ID="lbl_hello" runat="server" meta:resourceKey="lbl_hello"></asp:Label> <asp:Label ID="lbl_nameTitle" runat="server"></asp:Label> <asp:Label ID="lbl_nameOutput" runat="server"></asp:Label>
    
    <br />
    <br />

    <asp:Label ID="lbl_graduateResponse" runat="server" meta:resourceKey="lbl_graduateResponse"></asp:Label>
    <asp:Label ID="lbl_calendarResponse" runat="server"></asp:Label>

    <br />
    <br />

    <asp:Label ID="lbl_salaryResponse" runat="server" meta:resourceKey="lbl_salaryResponse"></asp:Label> <asp:Label ID="lbl_expectedSalary" runat="server"></asp:Label> <asp:Label ID="lbl_salaryResponse2" runat="server" meta:resourceKey="lbl_salaryResponse2"></asp:Label>

    <asp:Label ID="lbl_github" runat="server" meta:resourceKey="lbl_github"></asp:Label> <a href="https://github.com/lindseyzimanek">GitHub</a>
</asp:Panel>

        </td>
        </tr>
        </table>
</div>
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
