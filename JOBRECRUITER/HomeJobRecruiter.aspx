<%@ Page Title="" Language="C#" MasterPageFile="~/JOBRECRUITER/JobRecruiter.Master" AutoEventWireup="true" CodeBehind="HomeJobRecruiter.aspx.cs" Inherits="Project_jobPortal.JOBRECRUITER.HomeJobRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>Company Name :</td>
            <td><asp:Label ID="lblname" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td>Company URL :</td>
            <td><asp:Label ID="lblurl" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td>Email :</td>
            <td><asp:Label ID="lblemail" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td>Password :</td>
            <td><asp:Label ID="lblpassword" runat="server"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
