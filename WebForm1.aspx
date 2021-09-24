<%@ Page Title="" Language="C#" MasterPageFile="~/ForteQuest.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ForteQuest.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
    .auto-style1 {
        width: 456px;
    }
        .auto-style3 {
            width: 1154px;
            height: 21px;
        }
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            width: 458px;
            height: 32px;
        }
        .auto-style6 {
            width: 1154px;
        }
        .auto-style7 {
            width: 1154px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            height: 168px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
     <br />
    <div> 
<%--     Search:&nbsp;
     <asp:TextBox ID="Txtsearch" runat="server"></asp:TextBox>--%>
        <table class="w-100">
            <tr>
                <td class="auto-style6">Template Name:&nbsp;
     <input id="Text1" type="text" /></td>
                <td class="auto-style4"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3">
     <b style="font-size:2vw">Activities
     </b>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7">

<!-- Button trigger modal -->
 <%--<asp:Button ID="AddActivities" runat="server" CssClass="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-target=".bd-example-modal-lg"OnClick="AddActivitiesBtnClick" Text="Add Activities" />--%>
<button id="modalshowbtn" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-target=".bd-example-modal-lg" runat="server" >
 Add New Activity<br />
                    </button>
 <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="False">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Activities</h5>
        <button id="modalclosebtn" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
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

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="SaveBtn_Click" />
       
       </div>
    </div>
  </div>
</div>
      </div>


                    &nbsp;<br />
               </td>
                <td class="auto-style5"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            


        </table>
     <br />


     <br />

        &nbsp;<script type="text/javascript">

</script></div>

    <script type="text/javascript">
        function change(el) {
            if (el.value === "Open Curtain")
                el.value = "Close Curtain";
            else
                el.value = "Open Curtain";
        }
     $(document).ready(function () {
         $("#AddActivities").click(function () {
             $("#modalshowbtn").modal('show');
         });

         $("#modalclosebtn").click(function () {
             $("#modalclosebtn").modal('hide');
         });
         $("#ButSearch").click(function () {
             $("#ButSearch").modal('hide');
         });
                        
     });
    </script>
</asp:Content>

