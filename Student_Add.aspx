<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Add.aspx.cs" Inherits="Student_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 262px;
        }
        .auto-style4 {
            margin-top: 0px;
        }
    </style>
	 <link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/site.css" />
</head>
<body >
    
	<header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" asp-area="" asp-controller="Home" asp-action="Index" Style="margin-left:90px;font-size:24px;color:darkblue; font-family: verdana;">Online Quiz System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse"  align="right">
                    
                    <ul class="navbar-nav flex-grow-1">
			<form id="form1" runat="server">
                            <asp:Button ID="Button7" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button7_Click" Text="Student Login" Width="150px" Style="margin-top:10px;margin-left:450px" />
                            <asp:Button ID="Button8" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button8_Click" Text="Teacher Login" Width="150px" Style="margin-top:10px;margin-left:10px"/>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
        <div>
           <asp:Panel ID="Panel1" runat="server" BackColor="Salmon" BorderStyle="None" Height="100" server="" Width="100%" Style="margin:auto;width:50%;padding:10px;">
             <center><asp:Label ID="Label1" runat="server" Text="Add Student" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%" ></asp:Label>
                </center> </asp:Panel>
		
            <br />
            <center>
            <table>
                <tr>
                    <td class="auto-style2">
                        Student ID</td>
                    <td> <asp:TextBox ID="id" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" OnTextChanged="id_TextChanged" style="width: 168px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">
                        Username</td>
                    <td>
                        <asp:TextBox ID="name" runat="server" ForeColor="Salmon" BorderColor="SlateBlue" ErrorMessage="Please Enter Your Username" ></asp:TextBox></td>
                    
                </tr>
                
                <tr>
                    <td class="auto-style2">
                        Password</td>
                    <td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password" BorderColor="SlateBlue" ForeColor="SlateBlue" ErrorMessage="Please Enter Your Password" ></asp:TextBox></td>
                </tr>
                
                
            </table>
                <br />
                <br />
<asp:Button ID="Add" runat="server" Text="Add Student" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Add_Student" Width="138px"></asp:Button>
 <br />
                <br />
                <br />

                <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-BackColor="Silver" ForeColor="White" BorderStyle="Solid" BorderColor="White" BackColor="SlateBlue" HeaderStyle-HorizontalAlign="Center" HorizontalAlign="Center" Width="531px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
                
                </center>
            </br></br>
            <center>
		
                <asp:Button ID="Button11" runat="server" Height="58px" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Button11_Click" Text="Teacher Homepage" Width="219px" />
<asp:Button ID="Button1" runat="server" Text="Home" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="202px" CssClass="auto-style4" Height="58px"></asp:Button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="58px" BackColor="Salmon" ForeColor="White" BorderStyle="Solid" OnClick="Button2_Click" Text="Logout" Width="219px" />
                </center>
        </div>
    </form>
</body>
</html>
