using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phonedirectory
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DataView dataView = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable table = dataView.ToTable();
            TextBox9.Text = table.Rows[0].ItemArray[1].ToString();
            TextBox10.Text = table.Rows[0].ItemArray[2].ToString();
            TextBox11.Text = table.Rows[0].ItemArray[3].ToString();
            TextBox12.Text = table.Rows[0].ItemArray[4].ToString();
            TextBox13.Text = table.Rows[0].ItemArray[5].ToString();


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int i = SqlDataSource1.Update();
            if (i==1)
            {
                Label2.Text = "contact updated successfully";
            }
        }
    }
}