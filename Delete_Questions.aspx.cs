using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class Delete_Questions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
	MySqlConnection con;
        MySqlCommand cmd;
        String str;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        str = "SELECT qid, COUNT(*) FROM mcqexam.quiz GROUP BY qid";
        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
        da1.Fill(dt1);
        int cnt = 0;
        foreach (DataRow dr in dt1.Rows)
        {
            cnt++;
        }
        if (cnt == 0)
        {
            Response.Write("<script>alert('Create Quiz First')</script>");


        }
        str = "Select * from question";
        
        cmd = new MySqlCommand(str, con);
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = cmd;
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        
        con.Close();
    }
	protected void Button7_Click(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd,cmd1;
        String str,str1;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        
      
        str="delete from mcqexam.question where queid='" + queid.Text + "' ";

        cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
	con.Close();

	Response.Redirect("Delete_Questions.aspx");
    }
	 protected void gotohome(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }
	protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_login.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_login.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }
	protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
	
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
	
}