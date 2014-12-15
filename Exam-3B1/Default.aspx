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

    <asp:Label ID="lbl_language" runat="server" Text="<%$ Resources:Resource, lbl_language %>" ></asp:Label>

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
     <asp:Label ID="lbl_name" runat="server" Text="<%$ Resources:Resource, lbl_name %>"></asp:Label>
     <asp:TextBox ID="tb_name" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please enter your name." CssClass="rfv" ControlToValidate="tb_name"></asp:RequiredFieldValidator>

     

    <br />
    <br />

     <asp:Label ID="lbl_gender" runat="server" Text="<%$ Resources:Resource, lbl_gender %>"></asp:Label>        
     <asp:RadioButton ID="rbtn_male" runat="server" GroupName="gender" Checked="True" Text="<%$ Resources:Resource, rbtn_male %>"/>
     <asp:RadioButton ID="rbtn_female" runat="server" GroupName="gender" Text="<%$ Resources:Resource, rbtn_female %>" />
    
    <br />
    <br />

    <asp:Label ID="lbl_graduate" runat="server" Text="<%$ Resources:Resource, lbl_graduate %>"></asp:Label>
    <asp:Calendar ID="cal_graduate" runat="server"></asp:Calendar>

    <br />

    <asp:Label ID="lbl_salary" runat="server" Text="<%$ Resources:Resource, lbl_salary %>"></asp:Label>
    <asp:TextBox ID="tb_salary" runat="server"></asp:TextBox>

     <asp:RequiredFieldValidator ID="rfv_salary" runat="server" ControlToValidate="tb_salary" CssClass="rfv" ErrorMessage="Please enter your preferred salary."></asp:RequiredFieldValidator>

    <br />
    <br />

    <asp:Button ID="btn_submit" runat="server" Text="<%$ Resources:Resource, btn_submit %>"/>

 </asp:Panel>


 <asp:Panel ID="panel_response" runat="server" Visible="false">
    <asp:Label ID="lbl_hello" runat="server" Text="<%$ Resources:Resource, lbl_hello %>"></asp:Label> <asp:Label ID="lbl_nameTitle" runat="server"></asp:Label> <asp:Label ID="lbl_nameOutput" runat="server"></asp:Label>,
    
     <br />
     <br />

     <asp:Label ID="lbl_graduateResponse" runat="server" Text="<%$ Resources:Resource, lbl_graduateResponse %>"></asp:Label>
     <asp:Label ID="lbl_calendarResponse" runat="server"></asp:Label>
     !<br />
     <br />
     <asp:Label ID="lbl_salaryResponse" runat="server" Text="<%$ Resources:Resource, lbl_salaryResponse %>"></asp:Label>
     <asp:Label ID="lbl_expectedSalary" runat="server"></asp:Label>
     <asp:Label ID="lbl_salaryResponse2" runat="server" Text="<%$ Resources:Resource, lbl_salaryResponse2 %>"></asp:Label>
     
     <br />
     <br />
     
     <asp:Label ID="lbl_github" runat="server" Text="<%$ Resources:Resource, lbl_github %>"></asp:Label>
     <a href="https://github.com/lindseyzimanek">GitHub</a>.
    </asp:Panel>

        </td>
        </tr>
        </table>
</div>
</div>

<br />

 <footer>
    &copy; Lindsey Zimanek 2014
 </footer>

</form>
</body>
</html>

