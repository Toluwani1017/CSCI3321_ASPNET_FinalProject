using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitBook_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            cmd.CommandText = "INSERT INTO Books (Title, AuthorID, Price, PublishDate, PublisherID, GenreID, WordCount) " +
                    "VALUES ('" + txtTitle.Text + "', " + ddlAuthor.SelectedValue + ", '" + txtPrice.Text + "', '" +
                    txtPublishDate.Text + "', " + ddlPublisher.SelectedValue + ", " + ddlGenre.SelectedValue + " , '" + txtWordCount.Text + "')";

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

           Response.Redirect("DynamicTable.aspx");

        }

        protected void btnAddnewAuthor_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAuthors.aspx");
        }

        protected void btnAddnewPublisher_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPublishers.aspx");
        }
    }
}