<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeTeacher.aspx.cs" Inherits="HomeTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 250px;
        }
        .auto-style2 {
            margin-left: 250px;
        }
        .auto-style3 {
            margin-left: 250px;
        }
        .auto-style4 {
            margin-left: 250px;
        }
    </style>
	 <link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/site.css" />
</head>
<body clas="imgg">
    <form id="form1" runat="server">
	<header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" asp-area="" asp-controller="Home" asp-action="Index"  Style="margin-left:90px;font-size:24px;color:darkblue; font-family: verdana;">Online Quiz System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse"  align="right">
                    
                    <ul class="navbar-nav flex-grow-1">
                            <asp:Button ID="Button7" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button7_Click" Text="Student Login" Width="150px" Style="margin-top:10px;margin-left:450px"/>
                            <asp:Button ID="Button8" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button8_Click" Text="Teacher Login" Width="150px" Style="margin-top:10px;margin-left:10px" />
                    </ul>
                </div>
            </div>
        </nav>
    </header>
        <div>
          <center><asp:Label ID="Label1" runat="server" BackColor="Royalblue" BorderStyle="None" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="100px" Text="Teacher Homepage" Width="100%" Style="margin:auto;width:50%;padding:10px;"></asp:Label></center><br>
        
	<div Style="margin:auto;width:50%;border:3px solid black;padding:10px">
	
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add Student" BackColor="Salmon" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button1_Click" Width="215px" CssClass="auto-style2" />
		<p><br></p>
            <asp:Button ID="Button4" runat="server" Text="Add Teacher" BackColor="Salmon"  BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button6_Click" style="margin-left: 250px" Width="205px"  CssClass="auto-style2" />
           	<p><br></p>
	    <asp:Button ID="Button9" runat="server" Text="Delete Question" BackColor="Salmon"  BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button9_Click" style="margin-left: 250px" Width="205px"  CssClass="auto-style2" />
           	<p><br></p>
            <asp:Button ID="Button2" runat="server" Text="Add Questions" BackColor="Salmon" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button2_Click" Width="210px" CssClass="auto-style3" />
		<p><br></p>
            <asp:Button ID="Button3" runat="server" Text="Create Quiz" BackColor="Salmon" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button3_Click" Width="205px" CssClass="auto-style4" />

        </p>
       
            <p>
           
            <asp:Button ID="Button5" runat="server" Text="Home" BackColor="seagreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button5_Click" Width="202px" CssClass="auto-style1" />
		 </p>
	</div>
	<br>
            <p Style ="margin:auto;width:15%;">
	
         
                <asp:Button ID="Button6" runat="server" Height="58px" BackColor="RoyalBlue" ForeColor="White" BorderStyle="Solid" OnClick="Button2_Click" Text="Logout" Width="210px" />
               
        </p>
            </div>
    </form>
</body>
</html>
