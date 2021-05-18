<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_quiz.aspx.cs" Inherits="Student_quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/site.css" />
</head>
<body class="imgg">
    
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
                            <asp:Button ID="Button3" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button3_Click" Text="Student Login" Width="150px" Style="margin-top:10px;margin-left:450px" />
                            <asp:Button ID="Button4" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button4_Click" Text="Teacher Login" Width="150px" Style="margin-top:10px;margin-left:10px" />
                    </ul>
                </div>
            </div>
        </nav>
    </header>
         <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:Panel ID="Panel1" runat="server" BackColor="Salmon" Font-Bold="True" ForeColor="White" Height="80px" Width="100%" Font-Size="Large">
            <center><asp:Label ID="Label4" runat="server" Text="Student" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label></center>
            </asp:Panel>
        <center> <div> 
            <asp:Label ID="Label3" runat="server" Text="Quiz ID: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         
		
				<asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="3000">
				</asp:Timer>
				 <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Visible="True"></asp:Label>
			 
           
        </div>

        
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <asp:DataList ID="dlQuestion" runat="server" >
                        <ItemTemplate>
                            <p>
                                <%#Container.ItemIndex+1 %>
                                )
                                <%# Eval("que_desc")%>
                            </p>
                            <table>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionOne" GroupName="Questions" Text='<%# Eval("opt1") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionTwo" GroupName="Questions" Text='<%# Eval("opt2") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionThree" GroupName="Questions" Text='<%# Eval("opt3") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionFour" GroupName="Questions" Text='<%# Eval("opt4") %>'
                                            runat="server" />
                                    </td>
                                </tr
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="answer" GroupName="Questions" Text='<%# Eval("ans") %>'
                                            runat="server" Visible="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="marks" GroupName="Questions" Text='<%# Eval("marks") %>'
                                            runat="server" Visible="False" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
    
            </tr>
        </table>
	
	<asp:Button ID="Button1" runat="server" Text="Finish" BackColor="SlateBlue" BorderStyle="None" ForeColor="White" Font-Bold="True" Height="20" Width="80" onclick="Button1_Click" />
			 
        
       </center>
       
    </form>
     <asp:Label ID="Label5" runat="server"></asp:Label>
</body>
</html>

