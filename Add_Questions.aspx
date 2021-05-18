<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Questions.aspx.cs" Inherits="Add_Questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <!-- <style type="text/css">
        .auto-style1 {
            width: 347px;
        }
        .auto-style2 {
            margin-left: 3px;
        }
        </style>-->
    <link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/site.css" />
</head>
<body class="imgg">
    
        <header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" asp-area="" asp-controller="Home" asp-action="Index">Online Quiz System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse">
                    
                    <ul class="navbar-nav flex-grow-1">
				<form id="form1" runat="server">
                            <asp:Button ID="Button3" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button3_Click" Text="Student Login" Width="150px"  Style="margin-top:10px;margin-left:450px" />
                            <asp:Button ID="Button4" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button4_Click" Text="Teacher Login" Width="150px"  Style="margin-top:10px;margin-left:10px" />
                    </ul>
                </div>
            </div>
        </nav>
    </header>
        <div>
             <asp:Panel ID="Panel1" runat="server" BackColor="Salmon" BorderStyle="None" Height="100" server="" Width="100%" Style="margin:auto;width:50%;padding:10px;">
             <center><asp:Label ID="Label1" runat="server" Text="Add question" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%" ></asp:Label>
                </center> </asp:Panel><br>
	<center>
            <table>
               
                <tr>
                    <td>Question Description</td>
                    <td class="auto-style1"> <asp:TextBox ID="que" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" OnTextChanged="que1_TextChanged" style="margin-left: 8px;" Width="261px"></asp:TextBox></td>
                    
                </tr>
                
                 <tr>    <td> Option 1</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt1" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" OnTextChanged="opt1_TextChanged" Width="257px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                         
                    <td>Option 2</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt2" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" Width="250px" CssClass="auto-style2"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>Option 3</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt3" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" Width="251px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>Option 4</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt4" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" Width="246px"></asp:TextBox></td>
                    
                </tr>
                 <tr>
                    <td>Marks</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="marks" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" Width="246px"></asp:TextBox></td>
                    
                </tr>
                 <tr>
                    <td>Correct Answer</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="ans" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" Width="246px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>Quiz ID</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="qid" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" Width="246px"></asp:TextBox></td>
                    
                </tr>
                
            </table>
	</center>
                <br />

                <br />
		<center>
                  <asp:Button ID="Button2" runat="server" Text="Upload image" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Add_image" Width="138px"></asp:Button>
<asp:Button ID="Add" runat="server" Text="Add Question" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Add_que" Width="138px"></asp:Button>
 <br />
                <br />
                  <asp:GridView ID="GridView2" runat="server" AlternatingRowStyle-BackColor="SeaGreen" ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BackColor="RoyalBlue" HeaderStyle-HorizontalAlign="Center" HorizontalAlign="Center" Width="830px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
                <br />

                </center>
            <center>
<asp:Button ID="Button1" runat="server" Text="Home" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="291px" CssClass="auto-style4" Height="50px"></asp:Button>
                </center>
            </br></br>
	<center>
		<asp:Button ID="Button11" runat="server" Height="58px" BackColor="Salmon" ForeColor="Black" BorderStyle="Solid" OnClick="Button11_Click" Text="Teacher Homepage" Width="219px" />
	</center>            
<center>
		<br>
                <asp:Button ID="Button5" runat="server" Height="58px" BackColor="Salmon" ForeColor="Black" BorderStyle="Solid" OnClick="Button5_Click" Text="Logout" Width="181px" />
                </center>
        </div>
    </form>
</body>
</html>
