<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="FUFApplication.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="dashboard-table" width="1000px">
        <tr>
           
                <td class="content-td">
                     <a href="#">
                    <div>

                    </div>
                    <p>
                        <i class="fa fa-dashboard" aria-hidden="true"></i><br />
                        <p class="dashboard-link">Dashboard</p>
                    </p>
                          </a>
                </td>
           
            <td class="h-space"></td>
             <td class="content-td">
                     <a href="#">
                    <div>

                    </div>
                    <p>
                        <i class="fa fa-search" aria-hidden="true"></i><br />
                        <p class="dashboard-link">Search User</p>
                    </p>
                          </a>
                </td>
            <td class="h-space"></td>
              <td class="content-td">
                     <a href="#">
                    <div>

                    </div>
                    <p>
                        <i class="fa fa-user-plus" aria-hidden="true"></i><br />
                        <p class="dashboard-link">Add User</p>
                    </p>
                          </a>
                </td>
            <td class="h-space"></td>
            <td class="content-td">
                     <a href="#">
                    <div>

                    </div>
                    <p>
                        <i class="fa fa-building" aria-hidden="true"></i><br />
                        <p class="dashboard-link">Center Details</p>
                    </p>
                          </a>
                </td>
            <td class="h-space"></td>
        </tr>
        <tr class="v-space">
            <td></td>
        </tr>
        <tr>
           <td class="content-td">
                     <a href="#">
                    <div>

                    </div>
                    <p>
                        <i class="fa fa-plus" aria-hidden="true"></i><br />
                        <p class="dashboard-link">Add Center</p>
                    </p>
                          </a>
                </td>
            <td class="h-space"></td>
            <td class="content-td">
                     <a href="#">
                    <div>

                    </div>
                    <p>
                        <i class="fa fa-money" aria-hidden="true"></i><br />
                        <p class="dashboard-link">Account Details</p>
                    </p>
                          </a>
                </td>
            <td class="h-space"></td>
           <td class="content-td">
                     <a href="#">
                    <div>

                    </div>
                    <p>
                        <i class="fa fa-gear" aria-hidden="true"></i><br />
                        <p class="dashboard-link">Setting</p>
                    </p>
                          </a>
                </td>
            <td class="h-space"></td>
           <td class="content-td">
                     <a href="#">
                    <div>

                    </div>
                    <p>
                        <i class="fa fa-gears" aria-hidden="true"></i><br />
                        <p class="dashboard-link">Master Setting</p>
                    </p>
                          </a>
                </td>
            <td class="h-space"></td>
        </tr>
        <tr class="v-space">
            <td></td>
        </tr>
        <tr>
            <a href="#">
                <td class="content-td" colspan="3"></td>
            </a>
            <td class="h-space"></td>
            <a href="#">
                <td class="content-td" colspan="3"></td>
            </a>
        </tr>
    </table>
</asp:Content>
