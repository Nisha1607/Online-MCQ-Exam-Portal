﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Add_Teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String str;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        str = "Select * from teacher";
        cmd = new MySqlCommand(str, con);
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = cmd;
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

    protected void Add_Student(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String str;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();


        str = "select * from mcqexam.teacher where tid='" + id.Text + "' ";

        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);



        int cnt = 0;
        foreach (DataRow dr in dt.Rows)
        {
            cnt++;
        }
        if(cnt==0)
        {
            str = "INSERT INTO mcqexam.teacher(tid, tname, tpass) VALUES('" + this.id.Text + "','" + this.name.Text + "','" + this.password.Text + "')";
            cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
        }
        else
        {
            con.Close();
            Response.Write("<script>alert('Teacher with provided ID already exists')</script>");
        }
            

        
       
    }
	 protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_login.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_login.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gotohome(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }
}