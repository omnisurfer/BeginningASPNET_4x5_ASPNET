using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CosaNostraPRODModel;

public partial class PhotoAlbums_PictureDetails : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int pictureId = Convert.ToInt32(Request.QueryString.Get("Id"));

        using (CosaNostraPRODEntities myEntities = new CosaNostraPRODEntities())
        {
            var imageUrl = from myPicture in myEntities.Pictures
                               where myPicture.Id == pictureId
                               select myPicture;

            Image1.ImageUrl = imageUrl.Single().ImageUrl;
        }
    }
}