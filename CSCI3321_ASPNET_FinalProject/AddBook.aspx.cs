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
                "VALUES ('" + txtTitle.Text + "', " + ddlAuthor.SelectedValue + ", '" + txtPrice.Text + "', '" + txtPublishDate.Text + "', " + ddlPublisher.SelectedValue + ", " + ddlGenre.SelectedValue + " , '" + txtWordCount.Text + "')";


            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


            BuildBookTable();

        }

        public void BuildBookTable()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            //cmd.CommandText = "SELECT Title, LastName, FirstName, Price, PublishDate, PublisherName, GenreName FROM Books " +
            //    " INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID " +
            //    " INNER JOIN Genres ON Books.GenreID = Books.GenreID " +
            //    " INNER JOIN Publishers ON Books.PublisherID = Books.PublisherID "; 

            cmd.CommandText = "SELECT Books.Title, Authors.LastName, Authors.FirstName, Books.Price, Books.PublishDate, Publishers.PublisherName, Genre.GenreName " +
                "From Books AS bk" +
                "INNER JOIN" +
                "Authors as a" +
                "ON bk.AuthorID = a.AuthorID" +
                "INNER JOIN" +
                "Genres as g" +
                "ON bk.GenreID = g.GenreID" +
                "INNER JOIN" +
                "Publishers as p" +
                "ON bk.PublisherID = p.PublisherID";
;

                //("INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID",
                //"INNER JOIN Genres ON Books.GenreID = Books.GenreID", "
                //INNER JOIN Publishers ON Books.PublisherID = Books.PublisherID");

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    TableRow tr = new TableRow();
                    TableCell tc = new TableCell();
                    tc.Text = reader["Title"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["LastName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["FirstName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["Price"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["PublishDate"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["PublisherName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["GenreName"].ToString();
                    tr.Cells.Add(tc);

                    tblBookList.Rows.Add(tr);

                }
            }

        }


    }
}