<%@ Page Title="" Language="C#" MasterPageFile="~/ForteQuest.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ForteQuest.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 345px;
            height: 31px;
        }
        .auto-style14 {
            height: 21px;
            width: 345px;
        }
        .auto-style15 {
            width: 266px;
            height: 31px;
        }
        .auto-style16 {
            width: 266px;
        }
        .auto-style17 {
            height: 21px;
            width: 266px;
        }
        .auto-style18 {
            width: 266px;
            height: 30px;
        }
        .auto-style19 {
            width: 345px;
            height: 30px;
        }
        .auto-style21 {
            margin-left: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <table class="w-100">
        <tr>
            <td class="auto-style15">Activity Name:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ActivityNametxt" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ActivityNametxt" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">Duration (mins):&nbsp;
                <asp:TextBox ID="Durationtxt" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Durationtxt" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style14">
                <asp:RadioButtonList ID="RadioButtons" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" CssClass="auto-style21" Width="115px">
                    <asp:ListItem>Team</asp:ListItem>
                    <asp:ListItem>Individual</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                Activity Type:&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ActivityType" runat="server">
                    <asp:ListItem>RIASEC</asp:ListItem>
                    <asp:ListItem>Personality Type</asp:ListItem>
                    <asp:ListItem>Ethical Type</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style19">
                &nbsp;&nbsp;
                    Team Effort (%):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Team" runat="server" OnTextChanged="Team_TextChanged"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Team" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                MaxScore:
                <asp:TextBox ID="MaxScore" runat="server" OnTextChanged="MaxScore_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MaxScore" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style14">
                &nbsp;&nbsp;&nbsp; Individual Effort (%):&nbsp;&nbsp;
                    <asp:TextBox ID="Individual" runat="server" OnTextChanged="Individual_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Individual" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        </table>
    <div> 
        <asp:Button ID="SaveBtn" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="SaveBtn_Click" />
     </div>


</asp:Content>
