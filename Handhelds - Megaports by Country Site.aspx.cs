﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text.RegularExpressions;

public partial class Handhelds___Megaports_by_Country_Site : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //           GridView2.DataSourceID = BindDatatable();
            //           GridView2.DataBind();
        }
    }

    protected DataTable BindDatatable()
    {
        DataTable dt = new DataTable();

        // add the columns to the datatable            
        if (GridView2.HeaderRow != null)
        {

            for (int i = 0; i < GridView2.HeaderRow.Cells.Count; i++)
            {
                dt.Columns.Add(GridView2.HeaderRow.Cells[i].Text);
            }
        }

        //  add each of the data rows to the table
        foreach (GridViewRow row in GridView2.Rows)
        {
            DataRow dr;
            dr = dt.NewRow();

            for (int i = 0; i < row.Cells.Count; i++)
            {
                dr[i] = row.Cells[i].Text.Replace(" ", "");
            }
            dt.Rows.Add(dr);
        }
        return dt;

    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    // Export data to Excel from Gridview 

    protected void btnExport_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;

        Response.AddHeader("content-disposition",
        "attachment;filename=Handhelds - Megaports by Country Site.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);

        GridView2.AllowPaging = false;
        GridView2.DataBind();
        GridView2.Caption = "Handhelds - Megaports by Country Site";

        //Change the Header Row back to white color
        GridView2.HeaderRow.Style.Add("background-color", "#FFFFFF");

        //Apply style to Individual Cells
        GridView2.HeaderRow.Cells[0].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[1].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[2].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[3].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[4].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[5].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[6].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[7].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[8].Style.Add("background-color", "green");
        GridView2.HeaderRow.Cells[9].Style.Add("background-color", "green");

        for (int i = 0; i < GridView2.Rows.Count; i++)
        {
            GridViewRow row = GridView2.Rows[i];

            //Change Color back to white
            row.BackColor = System.Drawing.Color.White;

            //Apply text style to each Row
            row.Attributes.Add("class", "textmode");

            //Apply style to Individual Cells of Alternating Row
            if (i % 2 != 0)
            {
                //row.Cells[0].Style.Add("background-color", "#C2D69B");
                //row.Cells[1].Style.Add("background-color", "#C2D69B");

            }
        }

        GridView2.RenderControl(hw);

        //style to format numbers to string
        string style = @"<style> .textmode { mso-number-format:\@; } </style>";

        // Eliminate the Hyperlinks from the exported columns
        Response.Write(Regex.Replace(sw.ToString(), @"(<a[^>]*>)|
                            (</a>)", " ", RegexOptions.IgnoreCase));
        // Response.Write(style);
        // Response.Output.Write(sw.ToString());
        Response.Flush();
        Response.End();
    }
}