﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Student__main : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlCommand cmd;
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!this.IsPostBack)
        {
            BindGridView();
        }

    }

    private void BindGridView()
    {
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        str = "select * from quiz;";
        cmd = new MySqlCommand(str, con);
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Default.aspx");
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditButton")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            
            Response.Redirect("~/Student_quiz.aspx?qid=" + row.Cells[0].Text);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("result.aspx");
    }
	protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_login.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_login.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}