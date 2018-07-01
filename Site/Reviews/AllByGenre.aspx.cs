using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CosaNostraPRODModel;

public partial class Reviews_AllByGenre : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (CosaNostraPRODEntities myEntities = new CosaNostraPRODEntities())
        {
            var allGeneres = from genre in myEntities.Genres.Include("Reviews")
                             orderby genre.Name
                             where genre.Reviews.Count() > 0
                             select new { genre.Name, genre.Reviews };
            Repeater1.DataSource = allGeneres;
            Repeater1.DataBind();
        }
    }
}