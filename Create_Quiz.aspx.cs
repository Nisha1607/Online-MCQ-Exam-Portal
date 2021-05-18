using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Create_Quiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String str;

        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        str = "Select * from quiz";
        cmd = new MySqlCommand(str, con);
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = cmd;
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        con.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Add_image(object sender, EventArgs e)
    {

    }

    protected void Add_quiz(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String str;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
      
            str = "INSERT INTO mcqexam.quiz(qid,name,time,marks,createdBy) VALUES('" + this.quizid.Text + "','" + this.quizname.Text + "','" + this.qt.Text + "','" + this.qmarks.Text + "','" + Session["username"] + "')";
            cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
     
        con.Close();
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
	 protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_login.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }
}