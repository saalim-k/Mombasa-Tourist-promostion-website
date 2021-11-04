using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignement
{
    public partial class Activity : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //onpage load chaneg the gallery button backcolor and forecolor
            btnGallery.BackColor = System.Drawing.Color.White;
            btnGallery.ForeColor = System.Drawing.Color.Black;
        }

        //when home button is clicked direct users to home page
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        //check when check box list filter selections are changed
        protected void cblFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string arrays to store image paths for the hotels//
            string[] HTrave_Array = new string[] { "~/Images/TravellerHotel/pool-by-night.jpg", "Images/TravellerHotel/travellers-beach-hotel (1).jpg", "Images/TravellerHotel/travellers-beach-hotel (2).jpg", "Images/TravellerHotel/travellers-beach-hotel (3).jpg", "Images/TravellerHotel/travellers-beach-hotel (4).jpg", "Images/TravellerHotel/travellers-beach-hotel.jpg", "Images/TravellerHotel/view-of-the-area-around.jpg", "Images/TravellerHotel/deluxe-room.jpg", "Images/TravellerHotel/kisima-lounge.jpg", "Images/TravellerHotel/one-of-our-spacious-rooms.jpg" };
            string[] HSev_Array = new string[] { "~/Images/SeverinHotel/der-strand-an-der-severin.jpg", "~/Images/SeverinHotel/safari-pool.jpg", "~/Images/SeverinHotel/severin-sea-lodge (1).jpg", "~/Images/SeverinHotel/severin-sea-lodge (2).jpg", "~/Images/SeverinHotel/severin-sea-lodge (3).jpg", "~/Images/SeverinHotel/severin-sea-lodge.jpg" };
            string[] HSar_Array = new string[] { "~/Images/SarovaHotel/executive-suite.jpg", "~/Images/SarovaHotel/lobby.jpg", "~/Images/SarovaHotel/peace-reigns-at-the-pool.jpg", "~/Images/SarovaHotel/sarova-whitesands-beach (1).jpg", "~/Images/SarovaHotel/sarova-whitesands-beach.jpg", "~/Images/SarovaHotel/spa.jpg" };
            string[] HEng_Array = new string[] { "~/Images/EnglishPoint/hotel-englishpoint-spa.jpg", "~/Images/EnglishPoint/luxury-suite-living-room.jpg", "~/Images/EnglishPoint/pool-bar.jpg", "~/Images/EnglishPoint/pool-views.jpg", "~/Images/EnglishPoint/reception-aerial-view.jpg", "~/Images/EnglishPoint/spa-jacuzzi.jpg", "~/Images/EnglishPoint/vie-from-the-pool.jpg", "~/Images/EnglishPoint/views-of-the-pier-from.jpg", "~/Images/EnglishPoint/walk-down-to-the-boardwalk.jpg" };
            
            //Array of arrays to store the above arrays
            Array[] HSelected_Array = new Array[] { HTrave_Array, HSev_Array, HSar_Array, HEng_Array };

            //string arrays to store image paths for others 
            string[] Rest_Array = new string[] { "~/Images/Restaurants/Arturo.jpg", "~/Images/Restaurants/blueroom.jpg", "~/Images/Restaurants/galaxyChinese.jpg", "~/Images/Restaurants/LaMarina.PNG", "~/Images/Restaurants/misono.jpg" };
            string[] Sites_Array = new string[] { "~/Images/sites/fortjesus.jpeg", "~/Images/sites/hallerpark.jpg", "~/Images/sites/lighthhouse.jpg", "~/Images/sites/mamba village.jpg", "~/Images/sites/wildwaters.jpg" };
            string[] Beaches_Array = new string[] {"~/Images/Beaches/dianiBeach.jpg", "~/Images/Beaches/LantanaGalu.jpg", "~/Images/Beaches/nyalibeach.jpg", "~/Images/Beaches/tiwibeach.jpg", "~/Images/Beaches/watamubeach.jpg" };
            string[] Markets_Array = new string[] { "~/Images/market/0.jpg", "~/Images/market/1.jpg", "~/Images/market/2.jpg", "~/Images/market/3.jpg", "~/Images/market/4.jpg", "~/Images/market/5.jpg" };
            string[] Misc_Array = new string[] { "~/Images/gallery/1.jpeg", "~/Images/gallery/2.jpeg", "~/Images/gallery/3.jpeg", "~/Images/gallery/4.jpeg", "~/Images/gallery/5.jpeg", "~/Images/gallery/6.jpeg" };
            
            //Array of arrays to store the arrays for others 
            Array[] All_Arrays = new Array[] {null, Rest_Array, Sites_Array, Beaches_Array, Markets_Array, Misc_Array };

            //create list of arrays
            List<Array> selectionList = new List<Array>();

            //if the hotels is checked in the checkbox list
            //set the radiobutton list for the hotels to visible
            //check which index is selected in the radiobutton list
            if (cblFilter.Items[0].Selected)
            {
                rblHotels.Visible = true;
                //save the index to x
                int x = rblHotels.SelectedIndex;
                //if no index is selected
                if(x==-1)
                {
                    //do nothing
                }
                else
                {
                    //add the selected index array to the list of arrays
                    selectionList.Add(HSelected_Array[x]);
                }                
            }
            //if hotels is not checked
            else
            {
                //set the radio button list for hotels to not visible and remove the selected index
                rblHotels.Visible = false;
                rblHotels.SelectedIndex = -1;
            }
            //loop through the cblfilter to check which index is selected but avoiding the first checkbox because the code for that is already done above
            for (int i = 1; i < cblFilter.Items.Count; i++)
            {
                //if the checkbox is checked ...... add the appropriate array from the array of arrays to the list of arrays
                if (cblFilter.Items[i].Selected)
                {
                    selectionList.Add(All_Arrays[i]);
                }
            }
            //while the list still has items in it
            while(selectionList.Count!=0)
            {
                //set count for css purposes for each image
                int count = 1;
                //loop through the list of arrays
                foreach(Array outerElement in selectionList)
                {
                    //loop through each array inside the list
                    foreach (string innerElement in outerElement)
                    {
                        //create image object... set the image url and using count give the image its appropriate class
                        Image img = new Image();
                        img.ImageUrl = innerElement;
                        if(count%3==1)
                        {
                            img.CssClass = "Image1";
                        }
                        else if(count%3==2)
                        {
                            img.CssClass = "Image2";
                        }
                        else
                        {
                            img.CssClass = "Image3";
                        }
                        //Add the images to the div
                        DImages.Controls.Add(img);
                        //Add one to count for css purposes
                        count++;
                    }
                }
                //clear the list of arrays
                selectionList.Clear();
            }
        }

        // when the rblHotels selected index is changed , call the cbl filter again to make sure that the images in the div that shows the images updates
        protected void rblHotels_SelectedIndexChanged(object sender, EventArgs e)
        {
            cblFilter_SelectedIndexChanged(sender, e);
        }
    }
}