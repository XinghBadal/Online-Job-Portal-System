﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobRecruiter.aspx.cs" Inherits="Project_jobPortal.ADMIN.ManageJobRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvjobrecruiter" runat="server" OnRowCommand="gvjobrecruiter_RowCommand" AutoGenerateColumns="false"  >
                    <Columns>
                        <asp:TemplateField HeaderText="JobRecruiter Id">
                            <ItemTemplate>
                                <%#Eval("jr_id") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobRecruiter Name">
                            <ItemTemplate>
                                <%#Eval("jr_name") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobRecruiter Url">
                            <ItemTemplate>
                                <%#Eval("jr_url") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobRecruiter Email">
                            <ItemTemplate>
                                <%#Eval("jr_email") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobRecruiter Password">
                            <ItemTemplate>
                                <%#Eval("jr_password") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobRecruiter Inserted Date">
                            <ItemTemplate>
                                <%#Eval("inserted_date") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnstatus" runat="server" Text='<%#Eval("status").ToString()=="0" ? "Active" : "InActive" %>' CommandName="B" CommandArgument='<%#Eval("jr_id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
