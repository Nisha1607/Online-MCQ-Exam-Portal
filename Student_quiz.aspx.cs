﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Student_quiz : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlCommand cmd;
    String str;    int quizid = 0;
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        int seconds;
        int totalseconds;
        int minutes;
        if (Convert.ToString(Label1.Text) != "")
        {
            seconds = int.Parse(Label1.Text);
        }
        else
        {
            seconds = Convert.ToInt32(30);//set some time count in default timer
        }
        Session["timeout"] = (seconds - 3).ToString();
        if (seconds > 0)
        {
            seconds = seconds - 3;
            totalseconds = seconds % 60;
            minutes = seconds / 60;
            Label1.Text = (seconds).ToString();
            Label2.Text = minutes + ":" + totalseconds;

        }
        else
        {
            Timer1.Enabled = false;

		int result = 0;
        foreach (DataListItem item in dlQuestion.Items)
        {
            RadioButton rd_CS = (RadioButton)item.FindControl("rblOptionOne");
            RadioButton rd_CS2 = (RadioButton)item.FindControl("rblOptionTwo");
            RadioButton rd_CS3 = (RadioButton)item.FindControl("rblOptionThree");
            RadioButton rd_CS4 = (RadioButton)item.FindControl("rblOptionFour");
            RadioButton rd_CS5 = (RadioButton)item.FindControl("answer");
            RadioButton rd_CS6 = (RadioButton)item.FindControl("marks");
            if (rd_CS.Checked)
            {
                if (rd_CS.Text == rd_CS5.Text)
                {
                    result += Convert.ToInt32(rd_CS6.Text);
                }
            }
            if (rd_CS2.Checked)
            {
                if (rd_CS2.Text == rd_CS5.Text)
                {
                    result += Convert.ToInt32(rd_CS6.Text);
                }
            }
            if (rd_CS3.Checked)
            {
                if (rd_CS3.Text == rd_CS5.Text)
                {
                    result += Convert.ToInt32(rd_CS6.Text);
                }
            }
            if (rd_CS4.Checked)
            {
                if (rd_CS4.Text == rd_CS5.Text)
                {
                    result += Convert.ToInt32(rd_CS6.Text);
                }
            }
        }
	    con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        str = "insert into mcqexam.result(qid,marks,sid,susername) values ('" + TextBox1.Text + "','" + result + "','" + Session["id"] + "','" + Session["username"]+"')";
        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
	    Response.Redirect("result.aspx");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        quizid = Convert.ToInt32(Request.QueryString["qid"].ToString());
        if (!IsPostBack)
        {
            BindTextBoxvalues();
            this.Populate();
        }
        
    }
    private void BindTextBoxvalues()
    {
        TextBox1.Text = Convert.ToString(quizid);
    }

   
    private void Populate()
    {
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        str = "select * from question where qid='"+quizid+"'";
        cmd = new MySqlCommand(str, con);
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        dlQuestion.DataSource = dt;
        dlQuestion.DataBind();
        con.Close();
    }
	protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_login.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int result = 0;
        foreach (DataListItem item in dlQuestion.Items)
        {
            RadioButton rd_CS = (RadioButton)item.FindControl("rblOptionOne");
            RadioButton rd_CS2 = (RadioButton)item.FindControl("rblOptionTwo");
            RadioButton rd_CS3 = (RadioButton)item.FindControl("rblOptionThree");
            RadioButton rd_CS4 = (RadioButton)item.FindControl("rblOptionFour");
            RadioButton rd_CS5 = (RadioButton)item.FindControl("answer");
            RadioButton rd_CS6 = (RadioButton)item.FindControl("marks");
            if (rd_CS.Checked)
            {
                if (rd_CS.Text == rd_CS5.Text)
                {
                    result += Convert.ToInt32(rd_CS6.Text);
                }
            }
            if (rd_CS2.Checked)
            {
                if (rd_CS2.Text == rd_CS5.Text)
                {
                    result += Convert.ToInt32(rd_CS6.Text);
                }
            }
            if (rd_CS3.Checked)
            {
                if (rd_CS3.Text == rd_CS5.Text)
                {
                    result += Convert.ToInt32(rd_CS6.Text);
                }
            }
            if (rd_CS4.Checked)
            {
                if (rd_CS4.Text == rd_CS5.Text)
                {
                    result += Convert.ToInt32(rd_CS6.Text);
                }
            }
        }
        
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        str = "insert into result(qid,marks,sid,susername) values ('" + TextBox1.Text + "','" + result + "','" + Session["id"] + "','" + Session["username"]+"')";
        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();

	Response.Redirect("result.aspx");

        Label5.Text = "Your result is being shared with the higher authority. Software generated result : "+Convert.ToString(result);
        ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
    "setTimeout(function() { window.location.replace('result.aspx') },10);", true);
    }
}