using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CosaNostraPRODModel;

public partial class Reviews_MostRecent : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (CosaNostraPRODEntities myEntities = new CosaNostraPRODEntities())
        {
            var recentReviews = (from reviews in myEntities.Reviews
                                where reviews.Authorized == true
                                orderby reviews.CreateDateTime descending
                                select new {reviews.Title, reviews.Genre.Name}).Take(10);

            GridView1.DataSource = recentReviews;
            GridView1.DataBind();
        }
    }
}