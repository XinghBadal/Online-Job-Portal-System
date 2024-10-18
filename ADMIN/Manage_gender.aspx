<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_gender.aspx.cs" Inherits="Project_jobPortal.ADMIN.Manage_gender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>Gender Name :</td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" /></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:GridView ID="gvGender" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Gender ID">
                        <ItemTemplate>
                            <%#Eval("gid") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                
                    <asp:TemplateField HeaderText="Gender Name">
                        <ItemTemplate>
                            <%#Eval("gname") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                </asp:GridView></td>
        </tr>
    </table>
</asp:Content>
