<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobSeeker.aspx.cs" Inherits="Project_jobPortal.ADMIN.ManageJobSeeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvjobseeker" runat="server" OnRowCommand="gvjobseeker_RowCommand" AutoGenerateColumns="false" >
                    <Columns>
                        <asp:TemplateField HeaderText="JobSeeker Id">
                            <ItemTemplate>
                                <%#Eval("js_id") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobSeeker Name">
                            <ItemTemplate>
                                <%#Eval("js_name") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobSeeker Gender">
                            <ItemTemplate>
                                <%#Eval("js_gender") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobSeeker Email">
                            <ItemTemplate>
                                <%#Eval("js_email") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobSeeker Password">
                            <ItemTemplate>
                                <%#Eval("js_password") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobSeeker Inserted Date">
                            <ItemTemplate>
                                <%#Eval("inserted_date") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnstatus" runat="server" Text='<%#Eval("status").ToString()== "0" ? "Active" : "InActive" %>' CommandName="B" CommandArgument='<%#Eval("js_id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
