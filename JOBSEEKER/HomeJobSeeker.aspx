<%@ Page Title="" Language="C#" MasterPageFile="~/JOBSEEKER/JobSeeker.Master" AutoEventWireup="true" CodeBehind="HomeJobSeeker.aspx.cs" Inherits="Project_jobPortal.JOBSEEKER.HomeJobSeeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
   <tr>
            <td>Name :</td>
            <td><asp:Label ID="lblname" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td>Gender :</td>
            <td><asp:Label ID="lblgender" runat="server"></asp:Label></td>
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
