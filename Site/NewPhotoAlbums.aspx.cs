using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CosaNostraPRODModel;

public partial class _NewPhotoAlbums : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void EntityDataSource1_Inserted(object sender, EntityDataSourceChangedEventArgs e)
    {
        if (e.Entity != null)
        {
            PhotoAlbum myPhotoAlbum = (PhotoAlbum)e.Entity;
            Response.Redirect(string.Format("ManagePhotoAlbum.aspx?PhotoAlbumId={0}", myPhotoAlbum.Id.ToString()));
        }
    }
}