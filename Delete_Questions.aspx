<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_Questions.aspx.cs" Inherits="Delete_Questions" %>

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
             <center><asp:Label ID="Label1" runat="server" Text="delete question" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%" >Question ID:</asp:Label>
                </center> </asp:Panel><br>
           
		<center>
		<asp:TextBox ID="queid" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" Width="246px"></asp:TextBox></center>

		<br />
                  <asp:GridView ID="GridView2" runat="server" AlternatingRowStyle-BackColor="Silver" ForeColor="White" BorderStyle="Solid" BorderColor="White" BackColor="SlateBlue" HeaderStyle-HorizontalAlign="Center" HorizontalAlign="Center" Width="531px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
                <br />
		<center>
<asp:Button ID="Button7" runat="server" Text="delete" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Button7_Click" Width="291px" CssClass="auto-style4" Height="50px"></asp:Button>
                </center>
	<center>
		<asp:Button ID="Button11" runat="server" Height="58px" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Button11_Click" Text="Teacher Homepage" Width="219px" />
		</center>
            <center>
<asp:Button ID="Button1" runat="server" Text="Home" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="291px" CssClass="auto-style4" Height="50px"></asp:Button>
                </center>
            </br></br>
            
        </div>
    </form>
</body>
</html>
