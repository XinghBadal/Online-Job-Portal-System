<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Registration_JobRecruiter.aspx.cs" Inherits="Project_jobPortal.JOBRECRUITER.Registration_JobRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>Company Name :</td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Company URL :</td>
            <td><asp:TextBox ID="txturl" runat="server"></asp:TextBox></td>
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
