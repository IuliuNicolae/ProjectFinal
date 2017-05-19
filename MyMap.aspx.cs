using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectFinal
{
    public partial class MyMap : System.Web.UI.Page
    {
        string mydate = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mydate = (String)Session["Date"];
               


                string name = Context.User.Identity.Name.ToString();
                name = "Mattias";


                string completeName = name + mydate;
                controlLabel.Text = completeName;
                GLatLng mainLocation = new GLatLng(56.048439, 14.145720);
                GMap1.setCenter(mainLocation, 15);

                XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
                GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));
                
                List<geo_user1> locations = new List<geo_user1>();
                using (MyFirstDatabaseEntities dc = new MyFirstDatabaseEntities())
                {
                    locations = dc.geo_user1.Where(a => a.PartitionKey.Equals(completeName)).ToList();
                    
                }

                PinIcon p;
                GMarker gm;
                GInfoWindow win;
                foreach (var i in locations)
                {
                    p = new PinIcon(PinIcons.home, Color.Cyan);
                    gm = new GMarker(new GLatLng(Convert.ToDouble(i.Longitude), Convert.ToDouble(i.Latitude)),
                        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
                    
                    //  win = new GInfoWindow(gm, i.Id + " <a href='" + i.Id + "'>Read more...</a>", false, GListener.Event.mouseover);
                    //  GMap1.Add(win);
                    GMap1.Add(gm);
                   
                }
            }
        }

    }
}