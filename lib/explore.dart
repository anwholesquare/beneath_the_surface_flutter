import 'dart:ui';

import 'package:beneath_the_surface/Commons/webview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'Commons/game_card.dart';
import 'Constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class ExplorePage extends StatefulWidget {
  ExplorePage({super.key});
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {





  @override
  Widget build(BuildContext context) {

    

    return Scaffold(

      body: SafeArea(
        minimum: Constants.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                Text("Beneath The Surface", style: TextStyle(
                  fontFamily: GoogleFonts.lobster().fontFamily,
                  fontSize: 24,
                )),
                const Expanded(child: SizedBox()),
                Container(
                  decoration: Constants.defaultBoxDecoration,
                  child: const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.share)
                  ),
                ),
              ],),
              const SizedBox(height: 10,),
              ImageSlideshow(
                width: double.infinity,
                height: 200,
                initialPage: 0,
                indicatorColor: Constants.primaryColor,
                indicatorBackgroundColor: Colors.grey,
                isLoop: true,
                children: [
                  ClipRRect( borderRadius: BorderRadius.circular(20) ,child: Image.network('https://www.citrusreef.com/cdn/shop/articles/types-freshwater-sharks.jpg?v=1617708091', fit: BoxFit.cover)),
                  ClipRRect( borderRadius: BorderRadius.circular(20) ,child: Image.network('https://2ea.co.uk/wp-content/uploads/2023/05/Overfishing.png', fit: BoxFit.cover)),
                  ClipRRect( borderRadius: BorderRadius.circular(20) ,child: Image.network('https://www.reusethisbag.com/wp-content/uploads/2021/08/ocean-pollution-plastics.jpg.webp', fit: BoxFit.cover)),
                 ],
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row (children: [
                  Container(
                    decoration: Constants.defaultBoxDecoration,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Explore Deep Sea"),
                    )),
                  ),
              
                  Container(
                    decoration: Constants.defaultBoxDecoration,
                    child: const Center(child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text("Explore Water Map"),
                    )),
                  ),
              
                  Container(
                    decoration: Constants.defaultBoxDecoration,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Explore Pollutant Tour Mode"),
                    )),
                  ),
              
                  Container(
                    decoration: Constants.defaultBoxDecoration,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Deep Learning"),
                    )),
                  ),
                ],),
              ),
              const SizedBox(height: 10,),
              Text("Explore Now →", textAlign: TextAlign.start, 
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 16, 
                    fontWeight: FontWeight.w600)
              ),
              const SizedBox(height: 10,),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row (
                  children: [
                    
                    GameCard(text: "Deep Sea", imageURL: "https://images.unsplash.com/photo-1604599340287-2042e85a3802?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZGVlcCUyMHNlYXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                    GameCard(text: "Pollutant\nMode ", imageURL: "https://imageio.forbes.com/specials-images/imageserve/63d2f255063d4369c089b915/Challenging-life-journey-of-endangered-sea-turtles-amid-polluted-water/960x0.jpg"),
                   
                  ],
                  
                ),
              ),

              const SizedBox(height: 10,),

              Text("Learn about Aquatic Ecosystem →", textAlign: TextAlign.start, 
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 16, 
                      fontWeight: FontWeight.w600)
              ),
              const SizedBox(height: 10,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row (
                  children: [
                    

                    GestureDetector(
                      onTap: () {
                        Get.to(MyWebView(url: 'https://en.wikipedia.org/wiki/Mariana_Trench'));
                      },
                      child: GameCard(text: "Mariana Trench", imageURL: "https://geographical.co.uk/wp-content/uploads/shutterstock_1853507206-1-1.jpg")
                    ),
                    
                    GestureDetector(
                      onTap: () {
                        Get.to(MyWebView(url: 'https://www.britannica.com/science/epipelagic-zone'));
                      },
                      child: GameCard(text: "Epipelagic Zone", imageURL: "https://www.thoughtco.com/thmb/QDG0XPKeG4bZdO7ptpLugEJm-_o=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/oceansunfish-markconlin-getty-56a5f7a65f9b58b7d0df515e.jpg")
                    ),
                    
                    GestureDetector(
                      onTap: () {
                        Get.to(MyWebView(url: 'https://en.wikipedia.org/wiki/Mesopelagic_zone'));
                      },
                      child: GameCard(text: "Mesopelagic Zone", imageURL: "https://cff2.earth.com/uploads/2021/10/29190352/shutterstock_1036974175.jpg")
                    ),

                    
                     
                
                  ],
                  
                ),
              )
              
        
            ],
          ),
        ),
        
      ),
     );
  }
}