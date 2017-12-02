<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FUFApplication.index" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/Validation.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(window).load(function () {
                setTimeout(function () {
                    $('.loader').fadeOut('slow', function () {
                    });
                }, 100);
                $("#modal").hide();
            });
        });




</script>
     <script type="text/javascript">
        
    </script>
    <script>
        $(document).ready(function () {
            $("button").click(function () {
                $("#modal").fadeIn();

            });


        });

        $(document).ready(function () {
            $("#btn_Cancel").click(function () {
                $("#modal").hide();
            });
        });


</script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 
        <div class="loader">
            <div>
                <img src="images/loading2.gif" width="200px" style="margin-left:10px;"/>
                <p>This will take a moment..please wait...</p>
                
            </div>
            
        </div>
    <div id="top">
        <div id="top_container">
            <div id="header">
                <img src="images/FUF6.png" id="logo" class="logo"/>
               <ul id="nav">
                   <li><a href="index.aspx">Home</a></li>
                   <li><a href="index.aspx">About</a></li>
                   <li><a href="index.aspx">News</a></li>
                   <li><a href="index.aspx">Careers</a></li>
                   <li><a href="index.aspx">Services</a></li>
                   <li><a href="index.aspx">Contact Us</a></li>
               </ul>
                <div id="login_div">
                    <div id="left">
                        <div id="text">
                        <h1>Online Services Become Easier</h1>
                        <p>Get your online services easy and safe with us. We try to feel you free from online forms filling and other online services</p>
                        <p id="registration_link"><button class="button1" style="background:none;color:#ffd800;width:50%;margin-left:-28px" type="button">New User Register Here</button></p>
                            </div>

                    </div>
                    <div id="right">
                        <div id="login" class="userinfo">
                            <table>
                                <tr>
                                    <th id="login_head" class="table_head">Login Here</th>
                                </tr>
                                <tr>
                                    <th style="font-weight:100">To get our more services please login</th>
                                </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                 <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                <tr>
                                    <td class="login_innertext">Username</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="text_userName" CssClass="login_textbox" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                 <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                <tr>
                                    <td class="login_innertext">Password</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="text_userPass" TextMode="Password" CssClass="login_textbox" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                 <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="login_btn" CssClass="login_btn button" runat="server" Text="Get me login" CausesValidation="false" OnClick="login_btn_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div id="modal" class="modal">
        <div class="popup" id="popup" >
            <div id="registration" class="userinfo">
                            <table>
                                <tr>
                                    <th id="registration_head" class="table_head" colspan="2">Registration</th>
                                </tr>
                                <tr>
                                    <th style="font-weight:100" colspan="2">To get our more updates and offers please register</th>
                                </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                <tr>
                                    <td class="reg_innertext" style="width:50%;">Full name</td>
                                    <td class="reg_innertext">Email</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtregName" CssClass="login_textbox" runat="server"></asp:TextBox>
                                       <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="Validators" 
    ControlToValidate="txtregName" Display="Dynamic" runat="server" ErrorMessage="Username is required."></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtregEmail" CssClass="login_textbox" runat="server" ></asp:TextBox>
                                        <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="Validators" 
    ControlToValidate="txtregEmail" runat="server"  Display="Dynamic" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Email Address"
    ControlToValidate="txtregEmail" CssClass="Validators" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                <tr>
                                    <td class="reg_innertext">Date of Birth</td>
                                    <td class="reg_innertext">City</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtregDOB" CssClass="login_textbox" runat="server" Placeholder="dd/MM/yyyy" ></asp:TextBox>
                                         <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtregDOB" Format="dd/MM/yyyy" OnClientDateSelectionChanged="DateSelectionChanged" ></asp:CalendarExtender>
                                   <br />  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="Validators" 
    ControlToValidate="txtregDOB" runat="server"  Display="Dynamic" ErrorMessage="Date of birth is required."></asp:RequiredFieldValidator>
                                    </td>
                                    <td><asp:TextBox ID="txtregCity" CssClass="login_textbox" runat="server"></asp:TextBox>
                                        <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="Validators" 
    ControlToValidate="txtregCity" runat="server"  Display="Dynamic" ErrorMessage="City is required."></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                <tr>
                                    <td class="reg_innertext">Password</td>
                                    <td class="reg_innertext">Confirm Password</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtregPass" TextMode="Password" CssClass="login_textbox" runat="server"></asp:TextBox>
                                        <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator5"  Display="Dynamic" ControlToValidate="txtregPass" runat="server" ErrorMessage="Password required" CssClass="Validators"></asp:RequiredFieldValidator></td>
                                    <td><asp:TextBox ID="txtregCpass" TextMode="Password" CssClass="login_textbox" runat="server"></asp:TextBox>
                                        <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator6"  Display="Dynamic" ControlToValidate="txtregCpass" runat="server" ErrorMessage="Confirm Password" CssClass="Validators"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                 <tr>
                                    <td class="reg_innertext">Mobile No.</td>
                                    <td class="reg_innertext">Enter Captcha</td>
                                </tr>
                                <tr>
                                     <td style="text-align:left;padding-left:7%;">
                                         <asp:TextBox ID="txtregMobile" CssClass="login_textbox" Style="width:80%" runat="server" onkeypress="CheckNumericMobile(event);"></asp:TextBox><br />
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  Display="Dynamic" ControlToValidate="txtregMobile" CssClass="Validators" runat="server" ErrorMessage="Mobile no. required"></asp:RequiredFieldValidator>
                                         <span id="mobl_err" style="color:red;display:none">Please input (0-9)</span>
                                     </td>
                                    
                                    <td style="text-align:left;padding-left:7%">
                                        <table>
                                            <tr>
                                                <td><img src="Captcha.aspx" /></td>
                                                <td><asp:TextBox ID="txtregCaptcha" CssClass="login_textbox" Style="width:50%;margin-top:0px;margin-left:-5px" runat="server"></asp:TextBox>
                                                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator8"  Display="Dynamic" ControlToValidate="txtregCaptcha" CssClass="Validators" runat="server" ErrorMessage="Catpcha required"></asp:RequiredFieldValidator>

                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                <tr>
                                    <td class="v_space"></td>
                                     </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btn_submit" CssClass="button1" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                                         <button id="btn_Cancel" type="button" style="background-color:#e63939;" class="button1 cancel">Cancel</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
        </div>
    </div>
    </form>
</body>
</html>
