<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Password_Strength.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 149px;
        }
        .BarBorder{
            border: 2px black ridge;
            width: 120px;
        }


        .Poor{
            background-color:darkred;
        }
        .Weak{
            background-color:red;
        }
        .Average{
            background-color:blue;
        }
        .Nice{
            background-color:lightgreen;
        }
        .Strong{
            background-color:green;
        }



    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="2" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter Password</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="175px"></asp:TextBox>
                        <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="TextBox1" MinimumLowerCaseCharacters="26" MinimumNumericCharacters="9" MinimumSymbolCharacters="32" MinimumUpperCaseCharacters="26" PreferredPasswordLength="8" PrefixText="Password Strength : " HelpStatusLabelID="Label1" StrengthIndicatorType="BarIndicator" TextStrengthDescriptions="Poor;Weak;Average;Nice;Strong" BarBorderCssClass="BarBorder" StrengthStyles="Poor;Weak;Average;Nice;Strong" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
