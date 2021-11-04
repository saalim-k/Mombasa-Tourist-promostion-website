using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignement
{
    public partial class Home : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //change the back color and forcolor of home button on page load//
            btnHome.BackColor = System.Drawing.Color.White;
            btnHome.ForeColor = System.Drawing.Color.Black;


        }


        //when Hotels button is clicked//
        protected void btnHotels_Click(object sender, EventArgs e)
        {
            //set hotels multiview to visible and hide others multiview
            mvOthers.Visible = false;
            mvHotels.Visible = true;
            ddlOthers.SelectedIndex = 0;
            mvHotels.ActiveViewIndex = 0;
            //call active view changed of hotels to bind the data on first view of the hotels multiview
            mvHotels_ActiveViewChanged(sender,e);

        }
        //when dropdownlist selection is changed
        protected void ddlOthers_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if user clicks on others inside the ddl
            if(ddlOthers.SelectedIndex==0)
            {
                //hide all views in others 
                mvOthers.Visible = false;

            }

            //The If statements below will check which index is selected in the ddlothers
            //they will then set hotels multiview visibility to false
            //then they will set the mvothers visibility to true 
            //then they check which index is selected in ddlothers and set the mvothers view index appropriately
            if (ddlOthers.SelectedIndex == 1)
            {                
                mvHotels.Visible = false;
                mvOthers.Visible = true;               
                mvOthers.ActiveViewIndex = 0;                
            }

            if (ddlOthers.SelectedIndex == 2)
            {
                mvHotels.Visible = false;
                mvOthers.Visible = true;
                mvOthers.ActiveViewIndex = 1;
            }
            if (ddlOthers.SelectedIndex == 3)
            {
                mvHotels.Visible = false;
                mvOthers.Visible = true;
                mvOthers.ActiveViewIndex = 2;
            }
            if (ddlOthers.SelectedIndex == 4)
            {
                mvHotels.Visible = false;
                mvOthers.Visible = true;
                mvOthers.ActiveViewIndex = 3;
            }

        }



        //when the active view of hotels multiview is changed//
        protected void mvHotels_ActiveViewChanged(object sender, EventArgs e)
        {

            //set the striing arrays for the bulleted list inside each view of hotels multiview//
            string[] propertyTAmenities_Array = new string[] { "Free Parking", "Pool", "Wifi", "Bar / Lounge", "Diving", "Restaurant", "Conference facilities", "Salon", "Babysitting", "Beach", "Gym" };
            string[] roomFeaturesT_Array = new string[] { "A/c", "houseKeeping", "private balcony", "Room service", "Safe", "Minibar", "Refrigirator", "TV" };
            string[] roomtypesT_Array = new string[] { "Ocean View", "Non-smoking", "Family", "Smoking" };
            string[] propertySevAmen_Array = new string[] { "Free Parking", "Wifi", "Pool", "Free Breakfast", "Beach", "Entertainment staff", "Airport transport", "Bussiness center" };
            string[] rfSev_Array = new string[] { "A/c", "Private balcony", "Room service", "Safe", "TV" };
            string[] rtSev_Array = new string[] { "Ocean View", "Non-smoking", "Family", "Smoking" };
            string[] propAmenSarova_array = new string[] { "Free parking", "WiFi", "Pool", "Gym", "Free breakfas", "Beach", "Tennis court", "Babysitting" };
            string[] rfSarova_Array = new string[] {"A/c","Housekeeping","private balcony","Room service","VIP Room Facilities","Minibar","TV","Safe" };
            string[] rtSarova_Array = new string[] { "Ocean View", "Non-smoking", "Family" };
            string[] propAmenEnglishp_Array = new string[] { "Free parking", "Free-Wifi", "Pool", "GYM", "Bar/Lounge", "Beach", "Airport transportation", "Bussiness center" };
            string[] rfEngPoint_Array = new string[] {"Blackout curtains","Soundproof rooms","Air Conditioning","Desk","HouseKeeping","Coffee/tea maker","Cable/Satellite TV","Walk-in-shower" };
            string[] rtEngPoint_Array = new string[] { "Landmark view","Pool View","Non-smoking Rooms","Suites","Family rooms","Smoking Rooms" };


            //the if statements below will check which is the current active view in the mvhotels multiview//
            //they will then select the datasource for the selected view from the appropriate string array//
            //then bind the data accordingly//
            if (mvHotels.ActiveViewIndex==0)
            {
                
                blTravPA.DataSource = propertyTAmenities_Array;
                blTravPA.DataBind();
                blTravRF.DataSource = roomFeaturesT_Array;
                blTravRF.DataBind();
                blTravRT.DataSource = roomtypesT_Array;
                blTravRT.DataBind();
            }
            if(mvHotels.ActiveViewIndex==1)
            {
                
                blSevPA.DataSource = propertySevAmen_Array;
                blSevPA.DataBind();
                blSevRF.DataSource = rfSev_Array;
                blSevRF.DataBind();
                BLSevRT.DataSource = rtSev_Array;
                BLSevRT.DataBind();
            }
            if(mvHotels.ActiveViewIndex==2)
            {
                
                blPASarova.DataSource = propAmenSarova_array;
                blPASarova.DataBind();
                blRSarova.DataSource = rfSarova_Array;
                blRSarova.DataBind();
                blRtSarova.DataSource = rtSarova_Array;
                blRtSarova.DataBind();
            }
            if(mvHotels.ActiveViewIndex==3)
            {
                
                blPropAmenEng.DataSource = propAmenEnglishp_Array;
                blPropAmenEng.DataBind();
                blRfEng.DataSource = rfEngPoint_Array;
                blRfEng.DataBind();
                blRtEng.DataSource = rtEngPoint_Array;
                blRtEng.DataBind();
            }
        }
        
        //the function below is for when the user clicks on the button to view next image in the mvhotels multiview view 0//
        //it will then check the image url and change it to the next url//
        //when the last url is reached it will direct back to the first url//
        protected void btnTImageNext_Click(object sender, EventArgs e)
        {
            if(imgTravellerImages.ImageUrl== "~/Images/TravellerHotel/pool-by-night.jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/travellers-beach-hotel (1).jpg";
            }
            else if(imgTravellerImages.ImageUrl== "Images/TravellerHotel/travellers-beach-hotel (1).jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/travellers-beach-hotel (2).jpg";
            }
            else if (imgTravellerImages.ImageUrl == "Images/TravellerHotel/travellers-beach-hotel (2).jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/travellers-beach-hotel (3).jpg";
            }
            else if (imgTravellerImages.ImageUrl == "Images/TravellerHotel/travellers-beach-hotel (3).jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/travellers-beach-hotel (4).jpg";
            }
            else if (imgTravellerImages.ImageUrl == "Images/TravellerHotel/travellers-beach-hotel (4).jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/travellers-beach-hotel.jpg";
            }
            else if (imgTravellerImages.ImageUrl == "Images/TravellerHotel/travellers-beach-hotel.jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/view-of-the-area-around.jpg";
            }
            else if (imgTravellerImages.ImageUrl == "Images/TravellerHotel/view-of-the-area-around.jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/deluxe-room.jpg";
            }
            else if (imgTravellerImages.ImageUrl == "Images/TravellerHotel/deluxe-room.jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/kisima-lounge.jpg";
            }
            else if (imgTravellerImages.ImageUrl == "Images/TravellerHotel/kisima-lounge.jpg")
            {
                imgTravellerImages.ImageUrl = "Images/TravellerHotel/one-of-our-spacious-rooms.jpg";
            }
            else if (imgTravellerImages.ImageUrl == "Images/TravellerHotel/one-of-our-spacious-rooms.jpg")
            {
                imgTravellerImages.ImageUrl = "~/Images/TravellerHotel/pool-by-night.jpg";
            }
        }


        //the function below is for when the user clicks on the button to view next image in the mvhotels multiview view 1//
        //it will then check the image url and change it to the next url//
        //when the last url is reached it will direct back to the first url//
        protected void btnSevImgNext_Click(object sender, EventArgs e)
        {
            if(imgSeverinImages.ImageUrl == "~/Images/SeverinHotel/der-strand-an-der-severin.jpg")
            {
                imgSeverinImages.ImageUrl = "~/Images/SeverinHotel/safari-pool.jpg";
            }
            else if(imgSeverinImages.ImageUrl == "~/Images/SeverinHotel/safari-pool.jpg")
            {
                imgSeverinImages.ImageUrl = "~/Images/SeverinHotel/severin-sea-lodge (1).jpg";
            }
            else if(imgSeverinImages.ImageUrl == "~/Images/SeverinHotel/severin-sea-lodge (1).jpg")
            {
                imgSeverinImages.ImageUrl = "~/Images/SeverinHotel/severin-sea-lodge (2).jpg";
            }
            else if (imgSeverinImages.ImageUrl == "~/Images/SeverinHotel/severin-sea-lodge (2).jpg")
            {
                imgSeverinImages.ImageUrl = "~/Images/SeverinHotel/severin-sea-lodge (3).jpg";
            }
            else if (imgSeverinImages.ImageUrl == "~/Images/SeverinHotel/severin-sea-lodge (3).jpg")
            {
                imgSeverinImages.ImageUrl = "~/Images/SeverinHotel/severin-sea-lodge.jpg";
            }
            else if (imgSeverinImages.ImageUrl == "~/Images/SeverinHotel/severin-sea-lodge.jpg")
            {
                imgSeverinImages.ImageUrl = "~/Images/SeverinHotel/der-strand-an-der-severin.jpg";
            }
        }


        //the function below is for when the user clicks on the button to view next image in the mvhotels multiview view 2//
        //it will then check the image url and change it to the next url//
        //when the last url is reached it will direct back to the first url//
        protected void btnSarImgNext_Click(object sender, EventArgs e)
        {
            if(imgSarova.ImageUrl == "~/Images/SarovaHotel/executive-suite.jpg")
            {
                imgSarova.ImageUrl = "~/Images/SarovaHotel/lobby.jpg";
            }
            else if(imgSarova.ImageUrl == "~/Images/SarovaHotel/lobby.jpg")
            {
                imgSarova.ImageUrl = "~/Images/SarovaHotel/peace-reigns-at-the-pool.jpg";
            }
            else if (imgSarova.ImageUrl == "~/Images/SarovaHotel/peace-reigns-at-the-pool.jpg")
            {
                imgSarova.ImageUrl = "~/Images/SarovaHotel/sarova-whitesands-beach (1).jpg";
            }
            else if (imgSarova.ImageUrl == "~/Images/SarovaHotel/sarova-whitesands-beach (1).jpg")
            {
                imgSarova.ImageUrl = "~/Images/SarovaHotel/sarova-whitesands-beach.jpg";
            }
            else if (imgSarova.ImageUrl == "~/Images/SarovaHotel/sarova-whitesands-beach.jpg")
            {
                imgSarova.ImageUrl = "~/Images/SarovaHotel/spa.jpg";
            }
            else if (imgSarova.ImageUrl == "~/Images/SarovaHotel/spa.jpg")
            {
                imgSarova.ImageUrl = "~/Images/SarovaHotel/executive-suite.jpg";
            }
        }


        //the function below is for when the user clicks on the button to view next image in the mvhotels multiview view 3//
        //it will then check the image url and change it to the next url//
        //when the last url is reached it will direct back to the first url//
        protected void btnEngPointImgNxt_Click(object sender, EventArgs e)
        {
            if(imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/hotel-englishpoint-spa.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/luxury-suite-living-room.jpg";
            }
            else if(imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/luxury-suite-living-room.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/pool-bar.jpg";
            }
            else if (imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/pool-bar.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/pool-views.jpg";
            }
            else if (imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/pool-views.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/reception-aerial-view.jpg";
            }
            else if (imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/reception-aerial-view.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/spa-jacuzzi.jpg";
            }
            else if (imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/spa-jacuzzi.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/vie-from-the-pool.jpg";
            }
            else if (imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/vie-from-the-pool.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/views-of-the-pier-from.jpg";
            }
            else if (imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/views-of-the-pier-from.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/walk-down-to-the-boardwalk.jpg";
            }
            else if (imgEnglisPoint.ImageUrl == "~/Images/EnglishPoint/walk-down-to-the-boardwalk.jpg")
            {
                imgEnglisPoint.ImageUrl = "~/Images/EnglishPoint/hotel-englishpoint-spa.jpg";
            }
        }

        //the function below will direct user to the gallery page when the gallery button is clicked//
        protected void btnGallery_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gallery.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}