using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Handhelds : System.Web.UI.Page
{
    protected override void Render(System.Web.UI.HtmlTextWriter writer)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                row.Attributes["onmouseover"] =
                   "this.style.cursor=’hand’;this.style.textDecoration=’underline’;";
                row.Attributes["onmouseout"] =
                   "this.style.textDecoration=’none’;";
                // Set the last parameter to True 
                // to register for event validation. 
                row.Attributes["onclick"] =
                 ClientScript.GetPostBackClientHyperlink(GridView1,
                    "Select$" + row.DataItemIndex, true);
            }
        }
        base.Render(writer);
        }
    protected void Chart3_Load(object sender, EventArgs e)
    {


    }
}