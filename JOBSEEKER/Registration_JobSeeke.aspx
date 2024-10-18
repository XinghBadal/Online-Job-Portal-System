<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Registration_JobSeeke.aspx.cs" Inherits="Project_jobPortal.JOBSEEKER.Registration_JobSeeke" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>Name :</td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Gender :</td>
            <td><asp:RadioButtonList ID="rblgender" runat="server" RepeatColumns="3">
                <asp:ListItem Text="male" Value="1"></asp:ListItem>
                <asp:ListItem Text="female" Value="2"></asp:ListItem>
                <asp:ListItem Text="other" Value="3"></asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>

        <tr>
            <td>Email :</td>
            <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Password :</td>
            <td><asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" /></td>
        </tr>
    </table>
</asp:Content>
