<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_State.aspx.cs" Inherits="Project_jobPortal.ADMIN.Manage_State" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<table>
        <tr>
            <td>Country Name :</td>
            <td><asp:DropDownList ID="ddlcountry" runat="server"></asp:DropDownList></td>
        </tr>

    <tr>
            <td>State Name :</td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" /></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:GridView ID="gvstate" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="State ID">
                        <ItemTemplate>
                            <%#Eval("sid") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                
                    <asp:TemplateField HeaderText="Country Name">
                        <ItemTemplate>
                            <%#Eval("cname") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="State Name">
                        <ItemTemplate>
                            <%#Eval("sname") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                </asp:GridView></td>
        </tr>
    </table>
</asp:Content>
