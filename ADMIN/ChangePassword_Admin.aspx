﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ChangePassword_Admin.aspx.cs" Inherits="Project_jobPortal.ADMIN.ChangePassword_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        
        <tr>
            <td>Current Password :</td>
            <td><asp:TextBox ID="txtcurrentpassword" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>New Password :</td>
            <td><asp:TextBox ID="txtnewpassword" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Confirm New Password :</td>
            <td><asp:TextBox ID="txtconfirmnewpassword" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btncp" runat="server" Text="Change Password" Onclick="btncp_Click" /></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
