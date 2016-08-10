<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminVideos.aspx.cs" Inherits="MadhavClasses.Admin.AdminVideos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" updatemode="Conditional" >
            <ContentTemplate> 
                <div>
                    <asp:DropDownList ID="cmbPlaylist" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="ZZgWF2xURAM">
                            BB8
                        </asp:ListItem>
                    </asp:DropDownList>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </div>
            </ContentTemplate>
          </asp:UpdatePanel>
</asp:Content>
