using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
                mydate = (String)Session["Date"]; // getting date from session
                string name = (string)Session["UserName"];// getting name from session
             
                
                Debug.WriteLine("username: " + name);// debug
                


                string completeName = name + mydate;
                controlLabel.Text = completeName;
                GLatLng mainLocation = new GLatLng(56.048439, 14.145720);// define startlocation in gps map
                GMap1.setCenter(mainLocation, 15); // Setting  startlocation and zoom in googlemaps 

                XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate); // create start pin
                GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));// adds start pin to Google maps
                
                List<geo_user1> locations = new List<geo_user1>();
                using (MyFirstDatabaseEntities dc = new MyFirstDatabaseEntities())
                {
                    // adds position from sql to a list
                    locations = dc.geo_user1.Where(a => a.PartitionKey.Equals(completeName)).ToList();
                    
                }

                PinIcon p;
                GMarker gm;
                GInfoWindow win;
                foreach (var i in locations)
                {
                    // adds every location from location list to google maps as pins
                    p = new PinIcon(PinIcons.home, Color.Cyan);
                    gm = new GMarker(new GLatLng(Convert.ToDouble(i.Longitude), Convert.ToDouble(i.Latitude)),
                        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));
                    
                   
                    GMap1.Add(gm);
                   
                }
            }
        }

    }
}