<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FUFApplication.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div_welcome">
        <table style="width:100%;">
            <tr>
                <td style="text-align:center">
                    <asp:Label ID="lbl_welcome" runat="server" CssClass="lbl_welcome" Text="Label"></asp:Label></td>
            </tr>
        </table>
    </div>
    <div id="user_panel">
      
        <ul id="panel_list1" class="panel_list">
            <a href="#"><li id="up" >
                       <i class="fa fa-4x fa-user"  aria-hidden="true"></i><br />
                        <p class="user_option_heading">User Profile</p>
                        </li></a>
            <a href="#"><li id="pi" >
                  <i class="fa fa-4x fa-dropbox" aria-hidden="true"></i><br />
                <p class="user_option_heading">Package Info</p>
                        </li></a>
            <a href="#"><li  id="sc" >
                  <i class="fa fa-4x fa-search"aria-hidden="true"></i><br />
                <p class="user_option_heading">Search Center</p>
                        </li></a>
             <a href="#"><li id="gf" >
                   <i class="fa fa-4x fa-comments" aria-hidden="true"></i><br />
                 <p class="user_option_heading">Give Feedback</p>
                         </li></a>
        </ul>
    </div>
</asp:Content>
