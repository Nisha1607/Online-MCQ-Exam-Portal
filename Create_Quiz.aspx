<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create_Quiz.aspx.cs" Inherits="Create_Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 95px;
        }
        .auto-style2 {
            width: 98px;
        }
        .auto-style3 {
            width: 211px;
        }
        .auto-style4 {
            width: 554px;
        }
    </style>
	<link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
      <link rel="stylesheet" type="text/css" href="css/site.css" />
</head>
<body>
    
	<header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" asp-area="" asp-controller="Home" asp-action="Index">Online Quiz System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse"  align="right">
                    
                    <ul class="navbar-nav flex-grow-1">
				<form id="form1" runat="server">
                            <asp:Button ID="Button3" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button3_Click" Text="Student Login" Width="150px" Style="margin-top:10px;margin-left:450px"/>
                            <asp:Button ID="Button4" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button4_Click" Text="Teacher Login" Width="150px" Style="margin-top:10px;margin-left:10px"/>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="Salmon" BorderStyle="None" Height="100" server="" Width="100%">
             <center><asp:Label ID="Label1" runat="server" Text="Online Examination System" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%"></asp:Label>
                </center> <center><asp:Label runat="server" Text="Manage Quiz" Font-Size="X-Large" ForeColor="White"></asp:Label></center></asp:Panel>
            <br />
            <br />
        </div>
        <center>
        <table class="auto-style4">
           
		<tr>
                    <td class="auto-style3">Quiz ID</td>
                    <td class="auto-style1"> <asp:TextBox ID="quizid" runat="server" ForeColor="Salmon" BorderColor="SlateBlue"  style="margin-left: 8px;" Width="261px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td class="auto-style3">Quiz Name</td>
                    <td class="auto-style1"> <asp:TextBox ID="quizname" runat="server" ForeColor="Salmon" BorderColor="SlateBlue"  style="margin-left: 8px;" Width="261px"></asp:TextBox></td>
                    
                </tr>
                
                 <tr>    <td class="auto-style3"> Time</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="qt" runat="server" ForeColor="Salmon" BorderColor="SlateBlue"  Width="257px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                         
                    <td class="auto-style3">Marks</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="qmarks" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" Width="250px" CssClass="auto-style2"></asp:TextBox></td>
                    
                </tr>
            </table>

             <br />
                <br />
                  <asp:Button ID="Button2" runat="server" Text="Create Quiz" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Add_quiz" Width="208px" Height="53px"></asp:Button>
                    
                <br />
            <br />
            
               
                
                <br />

             <asp:GridView ID="GridView2" runat="server" AlternatingRowStyle-BackColor="SeaGreen" ForeColor="White" BorderStyle="Solid" BorderColor="White" BackColor="SeaGreen" HeaderStyle-HorizontalAlign="Center" HorizontalAlign="Center" Width="531px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
            </center>

        <br>
        </br>
	<center>
	<asp:Button ID="Button11" runat="server" Height="58px" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Button11_Click" Text="Teacher Homepage" Width="219px" />
	</center>      
 <center>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" Height="58px" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Button2_Click" Text="Logout" Width="181px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center>
    </form>
</body>
</html>
