<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_main.aspx.cs" Inherits="Student__main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/site.css" />
</head>
<body class="imgg">
   
      <div>
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
                            <asp:Button ID="Button3" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button3_Click" Text="Student Login" Width="150px" Style="margin-top:10px;margin-left:450px"/>
                            <asp:Button ID="Button4" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button4_Click" Text="Teacher Login" Width="150px" Style="margin-top:10px;margin-left:10px"/>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
        <asp:Panel ID="Panel1" runat="server" BackColor="Salmon" Font-Bold="True" ForeColor="White" Height="80px" Width="100%" Style="margin:auto;width:50%;padding:10px;" Font-Size="Large">
            <center><asp:Label ID="Label2" runat="server" Text="Student" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" ></asp:Label></center>
            </asp:Panel>
        <div>
        </div>
        <center><p><br/>
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" ForeColor="red" OnClick="Button1_Click" Text="Logout" />
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" ForeColor="red" OnClick="Button2_Click" style="height: 25px" Text="View Results" />
        </p>
        <asp:GridView ID="GridView1" HeaderStyle-BackColor="Salmon" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" Height="172px" Width="976px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">  
                <Columns>  
                    <asp:BoundField DataField="qid" HeaderText="Id"  />  
                    <asp:BoundField DataField="name" HeaderText="Name" />  
                    <asp:BoundField DataField="time" HeaderText="Time" />  
                    <asp:BoundField DataField="marks" HeaderText="Total Marks" />  
                    <asp:BoundField DataField="createdBy" HeaderText="By" />  
                    <asp:TemplateField>  
                        <ItemTemplate>  
                            <asp:Button ID="btnEdit" runat="server" Width="100" Text="Take Quiz" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                </Columns>  
            </asp:GridView>  </center>
      </div>  
    </form>
</body>
</html>
