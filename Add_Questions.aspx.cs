using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Add_Questions : System.Web.UI.Page
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

    protected void opt1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Add_image(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String str;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
    }

    protected void Add_Student(object sender, EventArgs e)
    {

    }

    protected void Add_que(object sender, EventArgs e)
    {
        MySqlConnection con;
        MySqlCommand cmd,cmd1;
        String str,str1;
        con = new MySqlConnection("server=localhost;user id=2018BCGRP30;database=mcqexam;password=Na387");
        con.Open();
        
      
        str = "select * from mcqexam.quiz where qid='" + qid.Text + "' ";

        cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);


   
            //int cnt = 0;
         //   foreach (DataRow dr in dt.Rows)
           // {
             //   cnt++;
              //  Session["username"] = dr["qid"].ToString();
                str = "INSERT INTO mcqexam.question(que_desc,opt1,opt2,opt3,opt4,ans,marks,qid) VALUES('" + que.Text + "','" + opt1.Text + "','" + opt2.Text + "','" + opt3.Text + "','" + opt4.Text + "','" + ans.Text + "','" + marks.Text + "','" + qid.Text + "')";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();

           // }
            con.Close();
           // if (cnt == 0)
             //   Response.Write("<script>alert('Invalid Quiz ID')</script>");
       
        
        Response.Redirect("Add_Questions.aspx");
        
        
    }

    protected void que1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

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
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
	protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeTeacher.aspx");
    }
}