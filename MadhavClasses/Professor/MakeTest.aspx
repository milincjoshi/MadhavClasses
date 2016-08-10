<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMaster.Master" AutoEventWireup="true" CodeBehind="MakeTest.aspx.cs" Inherits="MadhavClasses.Professor.MakeTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-lg-12">
        <div class="col-lg-6">
            <h3>
                Make a Test
            </h3>
            <div class="col-lg-12">
                <div class="col-lg-6">
                       <div class="col-lg-6">
                           Title:
                            <asp:TextBox ID="test_title" runat="server" placeholder="Title" CssClass="form-control"/>
                        </div>
                        <div class="col-lg-6">
                            Available:
                            <asp:DropDownList 
                                CssClass="form-control"
                                ID="test_available"
                                AutoPostBack="True"
                                OnSelectedIndexChanged="test_available_SelectedIndexChanged"
                                runat="server">

                                <asp:ListItem Selected="True" Value="True"> True </asp:ListItem>
                                <asp:ListItem Value="false"> False </asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-6">
                            Description:
                            <asp:TextBox ID="test_desc" runat="server" placeholder="Description" CssClass="form-control"/>
                        </div>
                        <div class="col-lg-6">
                            For :
                            <asp:DropDownList 
                                CssClass="form-control"
                                ID="test_for"
                                AutoPostBack="True"
                                OnSelectedIndexChanged="test_for_SelectedIndexChanged"
                                runat="server">

                                <asp:ListItem Selected="True" Value="12"> 12 </asp:ListItem>
                                <asp:ListItem Value="11"> 11 </asp:ListItem>
                                <asp:ListItem Value="10"> 10 </asp:ListItem>
                                <asp:ListItem Value="9"> 9 </asp:ListItem>
                                <asp:ListItem Value="8"> 8 </asp:ListItem>
                                <asp:ListItem Value="7"> 7 </asp:ListItem>

                            </asp:DropDownList>

                        </div>
                     <asp:Button ID="Add" runat="server" CssClass="btn col-lg-12 marginTop2" OnClick="Add_Click" Text="Add"/>
                </div>
             
            </div>

           
        </div>
        <!--List of tests-->
        <div class="col-lg-6">
            <h3>
                Your tests
            </h3>
            <table class="table">
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Available</th>
                        <th>For</th>
                            
                    </tr>
                    <asp:ListView ID="test_listView" runat="server">
                    <ItemTemplate>
                        
                        <tr>
                            <td>
                                <div><%# Eval("test_title") %></div>                           
                            </td>
                            <td>
                                <div><%# Eval("test_desc") %></div>                          
                            </td>
                            <td>
                                <div><%# Eval("test_available") %></div>
                            </td>
                            <td>
                                <div><%# Eval("test_for") %></div>
                            </td>
                            <td>
                                <div>
                                    <asp:LinkButton ID="delete" runat="server" OnCommand="delete_Command" CommandArgument='<%#Eval("test_id")%>' >
                                        Delete
                                    </asp:LinkButton>
                                </div>
                            </td>
                            <td>
                                <div>Edit</div>
                            </td>
                            <td>
                                <div>Manage Questions</div>
                            </td>
                        </tr>
                        </ItemTemplate>
                </asp:ListView>
            </table>                
               
        </div>

    </div>
    
    

    <!--List of tests-->
    <div>

    </div>

</asp:Content>
