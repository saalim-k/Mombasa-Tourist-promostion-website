<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignement.Home" MaintainScrollPositionOnPostback="true" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="homeStyle.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Alegreya:wght@500&family=Oswald:wght@300&display=swap" rel="stylesheet"/>
    <title></title>
    <style type="text/css">
    </style>
    </head>
<body>
    <form id="form1" runat="server" style="zoom:80%">
        <header>
            <div class="wrapper">
                 <asp:Image AlternateText="TuskLogo" CssClass="logo2" runat="server" ImageUrl="~/Images/new tusks.jpg"/>
            <asp:Label ID="lblMsaIsland" runat="server">Mombasa Island</asp:Label>
            <asp:Image AlternateText="TreeLogo" CssClass="logo3" runat="server" ImageUrl="~/Images/treelogo.png" />
            <div class="menu">
                <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click"  />
                <asp:Button ID="btnGallery" runat="server" Text="Gallery" OnClick="btnGallery_Click" />
            </div>
            </div>
        </header>
        <div class="row">
            <div class="lside">
                <asp:Image AlternateText="Logo"  runat="server" ImageUrl="~/Images/mombasa banner11.jpg" Height="100%" Width="100%"   />
            </div>
            <div class="lsideDown">
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <asp:Timer ID="Timer1" Interval="5000" runat="server" />
                <asp:UpdatePanel ID="up1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/AddRot.xml" Target="_self"/>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="rsideDown">
                 <asp:UpdatePanel ID="up2" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/AddRot.xml"/>
                    </ContentTemplate>
                 </asp:UpdatePanel>
            </div>
            <div class="rside">
                 <asp:Image AlternateText="Logo"  runat="server" ImageUrl="~/Images/mombasa banner22.jpg" Height="100%" Width="100%"   />
            </div>

            <div class="middle">
                <h1 style="text-align:center; font-size:50px;">Welcome To Mombasa</h1>
                <p>
                    Mombasa is a coastal city in southeast Kenya along the Indian Ocean. The city is known as the white and blue city in Kenya.
                    It is the country's oldest (circa 900 AD) and second-largest city (after the capital Nairobi), with a population of about
                    1,208,333 people according to the 2019 census.Its metropolitan region is the second-largest in the country, and has a population of 3,528,940 people.
                </p>
                <p>
                    Mombasa is a tourism-based city; it has an extra-large port and an international airport, and is an important regional tourism centre.
                    Located on the east coast of Kenya, it also is the home of one of the state houses, and is considered by some as a second capital in all but name.
                    In 2018 the local government released an edict in which the city was painted white with blue accents and the old town was painted yellow.
                    In Mombasa County and the former Coast Province, Mombasa's situation on the Indian Ocean made it a historical trading centre, 
                    and it has been controlled by many countries because of its strategic location.
                </p>
             </div>
             <div class="taab">
                <table >
                    <tr >
                        <td  colspan="2"><h2 style="text-align:center; font-size:35px">What are you intrested in?</h2></td>
                    </tr>
                    <tr>
                        <td style="width:50%">
                            <asp:Button ID="btnHotels" Text="Hotels" runat="server" width="100%" OnClick="btnHotels_Click" />
                        </td>
                        <td style="width:50%">
                            <asp:DropDownList ID="ddlOthers" runat="server" OnSelectedIndexChanged="ddlOthers_SelectedIndexChanged" width="100%" AutoPostBack="true" >
                                <asp:ListItem>Other Things to Do</asp:ListItem>
                                <asp:ListItem>Restaurants</asp:ListItem>
                                <asp:ListItem>Sight-seeing</asp:ListItem>
                                <asp:ListItem>Beaches</asp:ListItem>
                                <asp:ListItem>Markets/Malls</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
             </div>
            </div>
        <div class="middle1">
            <asp:MultiView ID="mvHotels" Visible="false" runat="server" ActiveViewindex="-1" OnActiveViewChanged="mvHotels_ActiveViewChanged">
                <asp:View ID="VTravellers" runat="server">
                    <div class="HotelInfo">
                        <h1 class="center">Travellers Beach Hotel & Club <asp:Button CssClass="nexting" ID="btnVNextSev" Text=">" runat="server" CommandName="NextView" /><asp:Button CssClass="nexting" ID="btnLast" Text=">>" runat="server" CommandName="SwitchViewByID" CommandArgument="VEnglishoint" /></h1>
                        <h2 style="padding-left:10px;">About</h2>
                        <hr />
                        <table>
                            <tr>
                                <td >
                                    <h1 class="lefthalf">4.0 </h1><img src="Images/Capture.PNG" width:"105px" height="16px" /><h3 class="righthalf">Very Good  </h3>
                                    <br />
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Location</p>
                                    <br />
                                    <img class="para" src="Images/Capture3.PNG" width:"105px" height:"25px"/> <p class="para">Cleanliness</p>
                                    <br />
                                    <img class="para" src="Images/Capture3.PNG" width:"105px" height:"25px"/> <p class="para">Service</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Value</p>
                                    <br />
                                    <p>Travellers Beach Hotel is dedicated to give you a relaxed and home like feeling. 
                                        Travellers Beach hotel provides a 4 star accommodation facility with luxurious amenities
                                        to enhance your stay and make it a memorable one. The amenities include telephone services,
                                        split air conditioner, balconies with panoramic view of the ocean and the swimming pool
                                    </p>
                                    <br />
                                    <asp:HyperLink ID="hLTrav" runat="server" NavigateUrl="https://www.travellersbeach.com/">Go to Travellers Beach Hotel & Club Website</asp:HyperLink>
                                    <br />
                                    <div class="c">
                                        <asp:Image class="image" ID="imgTravellerImages" ImageUrl="~/Images/TravellerHotel/pool-by-night.jpg" runat="server" />
                                        <asp:Button class="btn" ID="btnTImageNext" runat="server" Text=">" OnClick="btnTImageNext_Click"/>
                                    </div>
                                </td>
                                <td >
                                    <h3 class="leftrighthalf" >  Property Amenities </h3><br />
                                    <asp:BulletedList ID="blTravPA" runat="server" ></asp:BulletedList>
                                    <h3 class="leftrighthalf" >  Room Features </h3>
                                    <asp:BulletedList ID="blTravRF" runat="server" ></asp:BulletedList>
                                    <h3  class="leftrighthalf" >  Room types</h3>
                                    <asp:BulletedList ID="blTravRT" runat="server" ></asp:BulletedList>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>

                <asp:View ID="VSeverin" runat="server">
                    <div class="HotelInfo">
                        <h1 class="center"><asp:Button CssClass="nexting" ID="btnVPrevTrav" Text="<" runat="server" CommandName="PrevView" />Severin Sea Lodge <asp:Button CssClass="nexting" ID="btnVNextSarova" Text=">" runat="server" CommandName="NextView" /><asp:Button CssClass="nexting" ID="btnVLast1" Text=">>" runat="server" CommandName="SwitchViewByID" CommandArgument="VEnglishoint" /></h1>
                        <h2 style="padding-left:10px;">About</h2>
                        <hr />
                        <table class="Tbl1">
                            <tr>
                                <td>
                                    <h1 class="lefthalf">4.0</h1><img src="Images/Capture.PNG" width:"105px" height="16px" /><h3 class="righthalf">Very Good  </h3>
                                    <br />
                                    <br />
                                    <img class="para" src="Images/Capture3.PNG" width:"105px" height:"25px"/> <p class="para">Location</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Cleanliness</p>
                                    <br />
                                    <img class="para" src="Images/Capture3.PNG" width:"105px" height:"25px"/> <p class="para">Service</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Value</p>
                                    <br />
                                    <p>
                                        Severin Sea Lodge is an oasis of calm and recreation in an extensive palm garden.
                                        The hotel is located directly on the shores of the Indian Ocean on Bamburi Beach, approximately 12 kilometres from Mombasa Town and 20 kilometres from the airport.
                                         Airport transfers in our comfortable and air-conditioned mini buses are organized by our team on request.
                                        Our hotel has been constructed with loving care in the traditional Swahili style: the round bungalows, the main buildings and the two swimming pools
                                        are harmoniously located within a vast grove of palms. Our rooms and suites are equipped with handmade wooden furniture and designed in a classic natural style.
                                    </p>
                                    <br />
                                    <br />
                                    <asp:HyperLink ID="hlSev" NavigateUrl="https://www.severinsealodge.com/" runat="server">Go to Severin Sea Lodge Website</asp:HyperLink>
                                    <br />
                                    <div class="c">
                                        <asp:Image class="image" ID="imgSeverinImages" ImageUrl="~/Images/SeverinHotel/der-strand-an-der-severin.jpg" runat="server" />
                                        <asp:Button class="btn" ID="btnSevImgNext" runat="server" Text=">" OnClick="btnSevImgNext_Click" />
                                    </div>
                                </td>
                                <td class="half">
                                    <h3 class="leftrighthalf" >Property Amenities </h3><br />
                                    <asp:BulletedList ID="blSevPA" runat="server"></asp:BulletedList>
                                    <h3 class="leftrighthalf" >Room Features </h3>
                                    <asp:BulletedList ID="blSevRF" runat="server"></asp:BulletedList>
                                    <h3  class="leftrighthalf" >Room types</h3>
                                    <asp:BulletedList ID="BLSevRT" runat="server"></asp:BulletedList>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="VSarova" runat="server">
                    <div class="HotelInfo">
                        <h1 class="center"><asp:Button CssClass="nexting" ID="btnVFirst" Text="<<" runat="server" CommandName="SwitchViewByID" CommandArgument="VTravellers" /><asp:Button CssClass="nexting" ID="btnVprevSev" Text="<" runat="server" CommandName="PrevView" />Sarova WhiteSands <asp:Button CssClass="nexting" ID="btnVNextEnglishPoint" Text=">" runat="server" CommandName="NextView" /></h1>
                        <h2 style="padding-left:10px;">About</h2>
                        <hr />
                        <table class="Tbl1">
                            <tr>
                                <td >
                                    <h1 class="lefthalf">4.0 </h1><img src="Images/Capture.PNG" width:"105px" height="16px" /><h3 class="righthalf">Very Good  </h3>
                                    <br />
                                    <br />
                                    <img class="para" src="Images/Capture3.PNG" width:"105px" height:"25px"/> <p class="para">Location</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Cleanliness</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Service</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Value</p>
                                    <br />
                                    <p>
                                        East Africa's finest resort, Sarova Whitesands Beach Resort & Spa is conveniently located on one of the longest magnificent beach fronts on the Kenyan coast.
                                        We take pride in ensuring our guests enjoy the most relaxing and comfortable stay in tastefully furnished rooms and suites
                                        offering spectacular ocean, pool and garden views. For dining and entertainment, guests can choose from three themed superb restaurants,
                                        two great bars, and the exclusive Cocos Beach Bar, overlooking the beautiful Mombasa Ocean. There are four outdoor swimming pools
                                        with water slides, spring board, diving boards and four floodlit tennis courts that also serve as a landing ground for helicopters.
                                        A fully equipped wellness and fitness club with state-of-the-art fitness equipment, a PADI diving centre and a host of water sports,
                                        like snorkelling and jet skiing are also available. Be it a family holiday with children, beach wedding, honeymoon, business meetings
                                        with a difference or special interests like deep sea diving or fishing, Sarova Whitesands Beach Resort & Spa has something special for everyone.
                                    </p>
                                    <br />
                                    <br />
                                    <asp:HyperLink ID="hlSerena" runat="server" NavigateUrl="https://www.sarovahotels.com/whitesands-mombasa/">Go to Sarova Whitesands Website</asp:HyperLink>
                                    <br />
                                    <div class="c">
                                        <asp:Image class="image" ID="imgSarova" ImageUrl="~/Images/SarovaHotel/executive-suite.jpg" runat="server" />
                                        <asp:Button class="btn" ID="btnSarImgNext" runat="server" Text=">" OnClick="btnSarImgNext_Click"  />
                                    </div>
                                </td>
                                <td class="half">
                                    <h3 class="leftrighthalf" >Property Amenities </h3><br />
                                    <asp:BulletedList ID="blPASarova" runat="server"></asp:BulletedList>
                                    <h3 class="leftrighthalf" >Room Features </h3>
                                    <asp:BulletedList ID="blRSarova" runat="server"></asp:BulletedList>
                                    <h3  class="leftrighthalf" >Room types</h3>
                                    <asp:BulletedList ID="blRtSarova" runat="server"></asp:BulletedList>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="VEnglishoint" runat="server">
                    <div class="HotelInfo">
                        <h1 class ="center"><asp:Button CssClass="nexting" ID="btnVFirst1" Text="<<" runat="server" CommandName="SwitchViewByID" CommandArgument="VTravellers" /><asp:Button CssClass="nexting" ID="btnVPrevSarova" Text="<" runat="server" CommandName="PrevView" />Hotel EnglishPoint & Spa</h1>
                        <h2 style="padding-left:10px;">About</h2>
                        <hr />
                        <table >
                            <tr>
                                <td>
                                    <h1 class="lefthalf">4.0 </h1><img src="Images/Capture.PNG" width:"105px" height="16px" /><h3 class="righthalf">Very Good  </h3>
                                    <br />
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Location</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Cleanliness</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Service</p>
                                    <br />
                                    <img class="para" src="Images/Capture1.PNG" width:"105px" height:"25px"/> <p class="para">Value</p>
                                    <br />
                                    <p>
                                        EnglishPoint Hotel lives within the "ground-breaking" development of EnglishPoint Marina.
                                        It is modern, new, and easily the highest quality development in East Africa.
                                        All our suites have sea or harbour views, all are air-conditioned all are designed for your comfort.
                                        With a third floor boutique restaurant, an ultra modern Spa,
                                        and a full services marina (still under construction)
                                        it stands out as the pre-eminent development between Durban and Cairo.
                                        Geared for service and comfort there is no better place to stay.
                                        With 26 luxury bedrooms (all en-suite) and 26 Luxury suites not to mention the
                                        Executive suites and penthouses to stay in it is the height of decadent living.
                                                                                
                                    </p>
                                    <br />
                                    <br />
                                    <asp:HyperLink ID="hlEnglispoint" NavigateUrl="https://www.hotelenglishpoint.com/accommodation.html?gclid=Cj0KCQiA4feBBhC9ARIsABp_nbXyHQcUXs4WXYSuS3JDu8fw1YYV1BRUTo4RNCod8_WElPhP5s-N_68aAuTUEALw_wcB" runat="server">Go to EnglishPoint's Website</asp:HyperLink>
                                    <br />
                                    <div class="c" >
                                        <asp:Image class="image" ID="imgEnglisPoint" ImageUrl="~/Images/EnglishPoint/hotel-englishpoint-spa.jpg" runat="server" />
                                        <asp:Button class="btn" ID="btnEngPointImgNxt" runat="server" Text=">" OnClick="btnEngPointImgNxt_Click" />
                                    </div>
                                </td>
                                <td class="half">
                                    <h3 class="leftrighthalf" >Property Amenities </h3><br />
                                    <asp:BulletedList ID="blPropAmenEng" runat="server"></asp:BulletedList>
                                    <h3 class="leftrighthalf" >Room Features </h3>
                                    <asp:BulletedList ID="blRfEng" runat="server"></asp:BulletedList>
                                    <h3  class="leftrighthalf" >Room types</h3>
                                    <asp:BulletedList ID="blRtEng" runat="server"></asp:BulletedList>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
            </asp:MultiView>
            </div>
            <div class="middle1">
            <asp:MultiView ID="mvOthers" Visible="false" ActiveViewindex="-1" runat="server" >
                <asp:View ID="VRestaurants" runat="server">
                    <div class="othersInfo">
                        <h1>Top 5 restaurants in Mombasa!</h1>
                        <p>Although the traditional meal in Kenya is nyoma choma –roasted meat cooked along the roadsides and infused with a punchy,
                            smoky flavor – the coast offers up a diverse variety of cuisine. We take a look at the top 5 restaurants in Mombasa.
                        </p>
                        <hr />
                        <hr />
                        <h2>1.0 Arturo's</h2>
                        <p>Restaurant, Italian</p>
                        <asp:Image ID="imgArturo" runat="server" ImageUrl="~/Images/Restaurants/arturo.jpg" style="padding-left:10%;padding-right:10%; Width:100%" />
                        <p>
                            Adjacent to a crocodile farm, Arturo’s makes it surprisingly easy to immerse yourself in the ambiance of the chic restaurant
                            space and forget your scaly neighbors. Known to have been described by Italian expats as not only the best Italian restaurant
                            in the whole of Kenya, but the best Italian restaurant outside of Italy, Arturo’s menu offers a slice of Europe in the heart of Africa.
                            The menu veers away from a focus on pizza and pasta, replicating other regional delicacies such as carpaccio, minestrone and large,
                            flavorsome salads. That said, if you crave an expertly prepared, crispy based margarita with plenty of creamy mozzarella and a rich
                            tomato sauce, Arturo’s is the place to be.
                        </p>
                        <hr />
                        <h2>2.0 Blue Room Restaurant</h2>
                        <p>Restaurant, Diner, American, Indian, Pakistani, Vegetarian</p>
                        <asp:Image ID="imgBlueRoom" ImageUrl="~/Images/Restaurants/blueroom.jpg" runat="server" style="padding-left:20%;padding-right:20%;width:100%" />
                        <p>
                            The Blue Room has an authentic pizza oven in the center of its open plan kitchen, concocting perfectly toasted bases
                            and piping hot curries. This is a great spot to try if looking for African classics peppered with European influences.
                            With a charming Afro-American vibe, the Blue Room offers burgers and milkshakes alongside their traditional curries,
                            providing a home-from-home for tourists. The real star of The Blue Room however, is the cold ice-cream, providing a
                            welcome respite from the penetrating Kenyan heat. Relax in their large, diner-style restaurant to enjoy familiar
                            favorites in the heart of Mombasa.
                        </p>
                        <hr />
                        <h2>3.0 Galaxy Chinese</h2>
                        <p>Restaurant, Chinese</p>
                        <asp:Image ID="imgGalaxyChinese" runat="server" ImageUrl="~/Images/Restaurants/galaxyChinese.jpg" style="padding-left:9%;padding-right:9%;width:100%;" />
                        <p>If you are longing for authentic noodles, chow mein, or rice that doesn’t come automatically paired with a Kenyan fish curry,
                            then Galaxy Chinese should be high on your list of places to visit. As well as the favorite Chinese culinary exports such as
                            chicken chow mein and black bean beef, Galaxy also provides gourmet Chinese cuisine such as perfectly cooked, fragrant crispy
                            duck with light, homemade pancakes and thick plum sauce. Ginger crab and garlic chicken are also locally popular, providing a
                            welcome alternative to the hearty spice common to the surrounding area.
                        </p>
                        <hr />
                        <h2>4.0 Misono</h2>
                        <p>Restaurant, Japanese</p>
                        <asp:Image ID="imgMisono" ImageUrl="~/Images/Restaurants/Misono.jpg" runat="server" style="padding-left:20%;padding-right:20%;width:100%;"/>
                        <p>
                            A wonderful Japanese restaurant in the heart of Mombasa, Misono offers familiar flavors perfectly styled in accordance with
                            authentic Japanese cuisine. The traditional gong sounds as soon as you enter the restaurant, signaling the time to leave the
                            outside world behind and relax within the minimalist, neat space, complete with Kabuki style, hibachi tables and an understated
                            elegance. The seafood is fresh and the sushi expertly rolled, while the chili prawns are one of the best dishes in the city and
                            notoriously moreish.
                        </p>
                        <hr />
                        <h2>5.0 La Marina</h2>
                        <p>Restaurant,Seafood</p>
                        <asp:Image ID="imgLaMarina" runat="server" ImageUrl="~/Images/Restaurants/LaMarina.PNG" style="padding-left:14.5%;padding-right:14.5%;width:100%" />
                        <p>
                            La Marina prepares perfectly cooked seafood right on the beach. Perfect for a magical evening by the water,
                            this particular Mombasa favorite oozes romance, offering the opportunity to depart from the beach and take
                            a ride in the restaurant’s dhow, the traditional Arab sailing vessel. Setting off at sunset, the La Marina
                            dhow allows diners to enjoy fresh prawns pan-fried in garlic or grilled swordfish with delicate vegetables,
                            while gazing out over the stunning, theatrical backdrop of the sprawling Kenyan coastline. For an extra touch
                            of opulence, order a champagne cruise for you and a loved one, or celebrate an anniversary with a group of friends.
                        </p>
                        <hr />
                    </div>
                </asp:View>

                <asp:View ID="VSights" runat="server">
                    <div class="othersInfo">
                        <h1>Top 5 Places For Sight Seeing in Mombasa!</h1>
                        <p>
                            An exotic paradise in the African tropics is what comes to mind when people think of Mombasa.
                            The cosmopolitan tourist hub is filled with lots of fun-filled activities and boasts amazing
                            sites that guarantee you will never get bored. It is no wonder that hundreds of visitors grace
                            its shores each year and leave with delightful tales to tell. Here are 5 amazing sites you can visit
                            and have fun at in Mombasa.
                        </p>
                        <hr />
                        <hr />
                        <h2>1.0 Visit Fort Jesus</h2>
                        <p>History Museum</p>
                        <asp:Image ID="imgFortJesus" runat="server" ImageUrl="~/Images/sites/fortjesus.jpeg" style="width:100%" />
                        <p>
                            Constructed by the Portuguese in 1593-1596 and designed by Italian architect Cairati, Fort Jesus
                            is a UNESCO World Heritage site. Although it is partly damaged, Fort Jesus was built in the shape
                            of a man and is a fine display of 16th-century Portuguese military architecture. Enjoy the exhibitions
                            of the wide collection of ceramics and pottery reflecting the various cultures that traded along the coast.
                            Within the compound are many fascinating battlements and derelict buildings, including Omani house,
                            a building with Omani jewelry and displays on Swahili life
                        </p>
                        <hr />
                        <h2>2.0 Take A Trip To Haller Park</h2>
                        <p>Nature & Wildlife Area</p>
                        <asp:Image ID="imgHallerPark" runat="server" ImageUrl="~/Images/sites/hallerpark.jpg" style="width:100%" />
                        <p>
                            Formerly known as Bamburi Nature Trail, Haller Park is a hit with bird enthusiasts and animal lovers.
                            Take your family over and explore wildlife exhibitions of giraffes, Cape buffaloes, zebras, waterbucks
                            and hippos. And don’t forget the famous inter-species couple who became an internet sensation after the
                            130-year-old tortoise, Mzee, adopted the orphaned hippo, Owen. More than 160 species of birds also call
                            the park home. Haller Park was a project of Dr. René Haller that begun in 1971, when he transformed the
                            abandoned limestone quarries into a thriving nature reserve.
                        </p>
                        <hr />
                        <h2>3.0 Visit Mamba Village Center</h2>
                        <p>Nature & Wildlife Area</p>
                        <asp:Image ID="imgMambaVillage" runat="server" ImageUrl="~/Images/sites/mamba village.jpg" style="width:100%"/>
                        <p>
                            Take advantage of the opportunity to see East Africa’s largest crocodile farm at Mamba Village Center.
                            Not only will you acquire superior knowledge of these fascinating reptiles, but you can also ride on
                            horseback and admire the beautiful botanical garden and its aquarium. The garden exhibits flowering orchids,
                            aquatic plants and carnivorous species. One of the most exciting things to do is watching the crocodiles fight
                            for food during feeding time. There is a restaurant that prepares game meat such as crocodile, ostrich and zebra delights.
                        </p>
                        <hr />
                        <h2>4.0 Have A Fun Day at Wild Waters</h2>
                        <p>Water Park</p>
                        <asp:Image ID="imgWildWaters" runat="server" ImageUrl="~/Images/sites/wildwaters.jpg" style="width:100%" />
                        <p>
                            Set within Kenya's tropical sunshine, Wild Waters is a Family Entertainment Park that boasts a range of fun
                            and exhilarating activities for all ages! With 15 Adult and Kids Waterslides, a unique Raindance Disco Arena,
                            a Gaming Arcade, Bumper Cars, and a number of theme rides, Wild Waters is a complete entertainment facility equipped
                            at maximizing your amusement. We leave no stone untouched, with a Food Court, a Bar, and a Coffee Shop that caters
                            for all your needs.
                        </p>
                        <hr />
                        <h2>5.0 Visit The Light House</h2>
                        <p>Relaxing view, Breeze, Streetfood</p>
                        <asp:Image ID="imgLightHouse" runat="server" ImageUrl="~/Images/sites/lighthhouse.jpg" style="width:100%" />
                        <p>
                            If you fancy a view of the sea and a chance to enjoy some local snacks, then one of the best places to head to is the Mombasa
                            Lighthouse as it offers phenomenal views of the port and the opportunity to munch on some real African street food under the sunshine or shade.
                            You will be amazed with how much the street food vendors can do with simple vegetables and spices. Take for example, cassava (which is a starchy root vegetable),
                            which you will see a street food vendor create at least three different snacks from this one vegetable. You could have handmade golden cassava crisps, grilled cassava
                            or fried cassava with a generous amount of salt, lemon and chilli. Each is very different due to its texture, so I would have to recommend that you try each one
                            (which may I add, goes perfectly with a drink of coconut juice!).
                        </p>
                        <hr />
                    </div>
                    
                </asp:View>
                <asp:View ID="VBeaches" runat="server">
                    <div class="othersInfo">
                        <h1>Top 5 Beaches in Mombasa!</h1>
                        <p>
                            Mombasa beaches have been ranked as some of the best beaches in Africa and the World at large. Diani Beach, located 45 km from Mombasa town, has been voted the best beach in Africa
                            by the World Travel Awards for 6 years since 2014.The unique thing about Mombasa beach is that they are uniquely beautiful and they vary in appeal to different travelers.
                            These include Diani Beach, Watamu beach, Tiwi Beach, Chale Island beaches, Lamu beaches, and more.Our Mombasa beach vacation experts have written this guide to give you all
                            the information you need to decide which beach in Mombasa you should visit.
                        </p>
                        <hr />
                        <hr />
                        <h2>1.0 Diani Beach</h2>
                        <p>It is situated 30 kilometers south of Mombasa. It is accessible by road as well as by air from Ukunda Airstrip and the Moi International airport.
                            Diani beach casts the Image of a miniature paradise for any traveler coming across it for the first time.Dotted with swaying palm leaves,
                            the soft white sand, a shimmering ocean as far as the eye can see and the cool breeze teasing your senses, you cannot find
                            such magnificence anywhere in the world.Beautiful greenery abounds all over the beach giving it a pristine look.
                        </p>
                        <asp:Image ID="imgDianiBeach" runat="server" ImageUrl="~/Images/Beaches/dianiBeach.jpg" style="width:100%" />
                        <h3>Accommodation</h3>
                        <p>
                            There are luxurious hotels, resorts and private villas in Diani suited to any traveler’s budget.
                            These include the Water lovers beach Hotel, The Sands at Nomad, Grace House, and Leisure Lodge Resort among others.
                        </p>
                        <h3>Things to Do</h3>
                        <p>
                            Snorkeling, water skiing,  beach games, kayaking, canoeing, jet-skiing, beach walking,
                            shopping, wildlife safaris, scuba diving, sky diving, windsurfing, swimming with dolphins, casino games among others.
                        </p>
                        <hr />
                        <h2>2.0 Nyali Beach</h2>
                        <p>
                            Nyali beach is situated 20 kilometers north of Mombasa and is accessible by road from Mombasa city.
                            The beautiful beach is very close to the city and the ideal place for someone who wants to mix business with pleasure.
                            You can easily board a suite at the luxurious beach resorts here and yet conduct your business in the city.
                            It also harbors various amenities such as shopping malls, supermarkets, fitness centers, and restaurants.
                        </p>
                        <asp:Image ID="imgNyaliBeach" runat="server" ImageUrl="~/Images/Beaches/nyalibeach.jpg" style="width:100%" />
                        <h3>Accomodation</h3>
                        <p>There are many top hotels, budget hotels, and villas around Nyali suitable for solo travelers, small groups, or families.
                            They include The Voyager Beach Resort, Reef Hotel, Nyali Beach Hotel, City Blue Creekside, and hotel Suites among others.
                        </p>
                        <h3>Things to Do</h3>
                        <p>Beach sports like soccer and volleyball, snorkeling, swimming, kite surfing, scuba diving,
                            visiting the crocodile farm, shopping, cultural visit to Bombolulu Center and Fort Jesus among many others.</p>
                        <hr />
                        <h2>3.0 Watamu Beach</h2>
                        <p>The scenic Watamu Beach is situated 28 kilometers from Malindi town.It is accessible through the nearby Malindi
                            airport where one can connect a flight from the Jomo Kenyatta airport in Nairobi.It is strategically located 
                            near Watamu national and marine reserve.
                        </p>
                        <asp:Image ID="imgWatamuBeach" runat="server" ImageUrl="~/Images/Beaches/watamubeach.jpg" style="width:100%" />
                        <h3>Accomodation</h3>
                        <p>
                            There is a variety of hotels offering different services and ranging from high-priced to budget hotels.
                            They include the Sun palm beach hotel, Jambo Jahazi Bahari house, Twiga Beach Resort and Spa, Garoda Resort,
                            Mawe Resort, Watamu Beach Hotel, Alawi Boutique Hotel, Medina Palms, Arcadia cottages among others.
                        </p>
                        <h3>Things to Do</h3>
                        <p>
                            Swimming, beach walks, diving, cultural visits, wildlife safaris, nature walks, and many others.
                        </p>
                        <hr />
                        <h2>4.0 Tiwi Beach</h2>
                        <p>
                            Tiwi Beach has situated a small distance from the well-known Diani Beach. It is accessible via the ferry at Likoni
                            if you are connecting from the Moi Airport or taking the 30-minute drive from the nearby Ukunda Airstrip.
                            If you are seeking some privacy during your holiday by the beach, Tiwi beach should be one of the places
                            you may consider. The beautiful beach is secluded and you will enjoy watching the silvery sea without many distractions.
                            It is the ideal Mombasa beach for utmost personal reflection and will accord you some valuable peaceful moments.
                        </p>
                        <asp:Image ID="imgTiwiBeach" runat="server" ImageUrl="~/Images/Beaches/tiwiBeach.jpg" style="width:100%" />
                        <h3>Accomodation</h3>
                        <p>
                            The luxurious Amani Tiwi Beach Resort and some private cottages such as Swahili house villa and Waterside villa are some of the accommodation options here.
                        </p>
                        <h3>Things to Do</h3>
                        <p>
                            Swimming, snorkeling, water skiing, windsurfing, and scuba diving.
                        </p>
                        <hr />
                        <h2>5.0 Lantana Galu Beach</h2>
                        <p>
                            Galu Beach is situated 5 kilometers from Diani and Accessible by air from the nearby Ukunda Airstrip.
                            The spectacular beach harbors many coconut palm trees and is a perfect blend of white sparkling sand against green lush tropical gardens.
                            The privacy here can be greatly enjoyed by couples, solitary travelers, or family holidaymakers.
                        </p>
                        <asp:Image ID="imgLantanaGaluBeach" runat="server" ImageUrl="~/Images/Beaches/LantanaGalu.jpg" style="width:100%" />
                        <h3>Accomodation</h3>
                        <p>
                            Lantana Galu Beach Resort, Neptune Palm Beach Boutique Hotel, Amber Villas among others.
                        </p>
                        <h3>Things to Do</h3>
                        <p>
                            Kite surfing, camel riding, snorkeling, dolphin dhow safaris, nature walks to the Kaya Kinondo forest and village, deep-sea fishing, sky diving, beach sports, kayaking among many others.
                        </p>
                    </div>
                    

                </asp:View>
                <asp:View ID="VMarketsnMalls" runat="server">
                    <div class="othersInfo">
                        <h1>Top 5 Markets or Malls that you Must Visit in Mombasa!</h1>
                        <asp:Image ID="market0"  runat="server" ImageUrl="~/Images/market/0.jpg" style="width:100%" />
                        <p>Shopping in Mombasa is an exciting experience. The markets here range from cultural to urban.
                            From spices, wood carvings and antiques to handmade sandals, tailored clothing and woven sarongs,
                            Mombasa is a great place to shop. Bargaining is a must in most places; shop around before you decide
                            what you want and offer a price that you're prepared to pay. If buying several items from the same seller, discounts can be negotiated.
                            You can get many souvenirs from your trip to Mombasa by visiting the markets and malls listed below.</p>
                        <hr />
                        <hr />
                        <h2>1.0 Spice Market</h2>
                        <asp:Image ID="imgSpiceMarket" runat="server" ImageUrl="~/Images/market/1.jpg" style="width:100%" />
                        <p>This market, which stretches along Nehru and Langoni Rds west of the Old Town, is an evocative, sensory overload
                            – expect lots of jostling, yelling, wheeling, dealing and, of course, the exotic scent of stall upon stall of
                            cardamom, pepper, turmeric and curry powders.
                        </p>
                        <p>
                            Saffron, cinnamon, cloves, cardamom, curry powder from India…no visit to Mombasa is complete without a stop at the famous spice market.
                            Prices aren't fixed, so start bargaining only once you're sure you want to buy something. You'll also likely be offered other kinds of 'spices',
                            such as miraa (twigs and shoots that are chewed as a stimulant) and pan.
                        </p>
                        <p>Because of it's location on the Kenyan coast and once an important trade route, Mombasa has some culinary influences
                            from India starting with the spices. You'll find that clearly at the Mombasa Spice Market in old town
                            - a covered market with stands and stands of spices and fruit. Upon entering, you'll surely be told
                            "smelling is for free". Go with it - maybe you'll get some spices (just watch out for the "foreigner price"),
                            either way, it's definitely worth checking out for the the bustling market scene.
                        </p>
                        <hr />
                        <h2>2.0 Markiti Market</h2>
                        <asp:Image ID="imgMarkiti" runat="server" ImageUrl="~/Images/market/2.jpg" style="width:100%" />
                        <p>
                            For a great Kenyan shopping experience, head out to Marikiti Market in the city. This bustling market
                            makes for a thrilling outing, and you’ll find plenty of great souvenirs and artwork to make the trip worthwhile.
                            You can also get Kenyan clothes along with cloths and khangas of a stunning variety that you might not get elsewhere.
                            There are numerous places to get food along the way, with street food being a popular and tasty option.
                        </p>
                        <hr />
                        <h2>3.0 Biashara Street</h2>
                        <asp:Image ID="imgBiashara" runat="server" ImageUrl="~/Images/market/3.jpg" style="width:100%" />
                        <p>
                            Here you will find mainly Kikois and kangas.Kikois and kangas are brightly coloured woven sarongs (the former, for men) and wraps
                            (the latter, for women). They come as a pair, one for the top half of the body and one for the bottom, and are marked with Swahili proverbs.
                            Head to Biashara St, west of the Digo Rd intersection (just north of the spice market). You may need to bargain, but what you get is generally
                            what you pay for – bank on about KSh600 for a pair of cheap kangas or a kikoi. Kofia (the handmade caps worn by Muslim men) are also crafted here;
                            a really excellent one can cost up to KSh2500.
                        </p>
                        <hr />
                        <h2>4.0 City Mall</h2>
                        <asp:Image ID="imgCityMall" runat="server" ImageUrl="~/Images/market/4.jpg" style="width:100%" />
                        <p>
                            For visitors who want a relaxed shopping experience in a gorgeous environment, the City Mall Nyali offers a good retreat.
                            You can choose a tasty Indian or Chinese-themed lunch from the numerous fine restaurants on the second floor of this seven-floor mall.
                            For shopping, you can check out the fashion shops around the establishment, a selection which includes such renowned brands as Woolworths, Levi’s and Converse.
                        </p>
                        <hr />
                        <h2>5.0 Nyali Shopping centre</h2>
                        <asp:Image ID="imgNyaliSC" runat="server" ImageUrl="~/Images/market/5.jpg" style="width:100%" />
                        <p>
                            The Largest mall in Mombasa. Mombasa Landmark Business and pleasure mall with a built up area of over 330,000sq.ft.
                            offering a top brand supermarket, restaurants, night clubs, fast foods, shops and showrooms generously spread out in
                            the rapidly expanding commercial hub of New Nyali Mombasa Kenya. With a parking space for over 200 cars you will enjoy
                            a panoramic view of the surroundings Sea-Beach views.
                        </p>
                    </div>
                    
                </asp:View>
            </asp:MultiView>
        </div>
        
    </form>
</body>
</html>
