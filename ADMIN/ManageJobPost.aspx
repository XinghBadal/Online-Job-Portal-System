<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobPost.aspx.cs" Inherits="Project_jobPortal.ADMIN.ManageJobPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvjobs" runat="server" OnRowCommand="gvjobs_RowCommand" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Job Id">
                            <ItemTemplate>
                                <%#Eval("jp_id") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobRecruiter Name">
                            <ItemTemplate>
                                <%#Eval("jr_name") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Job Profile">
                            <ItemTemplate>
                                <%#Eval("jpr_name") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Required Exp">
                            <ItemTemplate>
                                <%#Eval("minexp") %> year - <%#Eval("maxexp") %> year
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Offered Salary">
                            <ItemTemplate>
                              Rs. <%#Eval("minsalary") %> - Rs. <%#Eval("maxsalary") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="No of vacancy">
                            <ItemTemplate>
                                <%#Eval("noofvacancy") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Job Location">
                            <ItemTemplate>
                                <%#Eval("jrl_name") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Comments">
                            <ItemTemplate>
                                <%#Eval("comments") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="JobPost Date">
                            <ItemTemplate>
                                <%#Eval("inserted_date") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnstatus" runat="server" Text='<%#Eval("status").ToString()== "0" ? "Active" : "InActive" %>' CommandName="B" CommandArgument='<%#Eval("jp_id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
       
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
