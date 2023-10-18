import 'dart:ui';

import 'package:beneath_the_surface/Commons/webview.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

  int selectedIdx = 0;



  void _onItemTapped(int index) {
    setState(() {
      selectedIdx = index;
    });
  }




  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 47),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: Constants.defaultPadding,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  SvgPicture.asset("assets/logo.svg", height: 60,),
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/7.svg", height: 31)
                  ),
                ],),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: Constants.defaultPadding,
                child: ImageSlideshow(
                  width: double.infinity,
                  height: (MediaQuery.of(context).size.width-40) * (9/16),
                  initialPage: 0,
                  indicatorColor: Constants.primaryColor,
                  indicatorBackgroundColor: Colors.grey,
                  isLoop: true,
                  children: [
                    ClipRRect( borderRadius: BorderRadius.circular(20) ,child: FancyShimmerImage(imageUrl: 'https://www.citrusreef.com/cdn/shop/articles/types-freshwater-sharks.jpg?v=1617708091')),
                    ClipRRect( borderRadius: BorderRadius.circular(20) ,child: FancyShimmerImage(imageUrl: 'https://2ea.co.uk/wp-content/uploads/2023/05/Overfishing.png')),
                    ClipRRect( borderRadius: BorderRadius.circular(20) ,child: FancyShimmerImage(imageUrl: 'https://www.reusethisbag.com/wp-content/uploads/2021/08/ocean-pollution-plastics.jpg.webp')),
                   ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, bottom: 10),
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              //     child: Row (children: [
              //       Container(
              //         decoration: Constants.defaultBoxDecoration,
              //         child: const Center(child: Padding(
              //           padding: EdgeInsets.all(8.0),
              //           child: Text("Explore Deep Sea"),
              //         )),
              //       ),
              //       const SizedBox(width: 5,),
              //       Container(
              //         decoration: Constants.defaultBoxDecoration,
              //         child: const Center(child: Padding(
              //           padding:  EdgeInsets.all(8.0),
              //           child: Text("Explore Water Map"),
              //         )),
              //       ),
              //       const SizedBox(width: 5,),
              //       Container(
              //         decoration: Constants.defaultBoxDecoration,
              //         child: const Center(child: Padding(
              //           padding: EdgeInsets.all(8.0),
              //           child: Text("Explore Pollutant Tour Mode"),
              //         )),
              //       ),
                
              //       Container(
              //         decoration: Constants.defaultBoxDecoration,
              //         child: const Center(child: Padding(
              //           padding: EdgeInsets.all(8.0),
              //           child: Text("Deep Learning"),
              //         )),
              //       ),
              //     ],),
              //   ),
              // ),
              // const SizedBox(height: 10,),
              Padding(
                padding: Constants.defaultPadding,
                child: Text("Explore Now →", textAlign: TextAlign.start, 
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.w600)
                ),
              ),
              const SizedBox(height: 10,),
              
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row (
                    children: [
                      
                      GameCard(text: "Deep\nSea", imageURL: "https://images.unsplash.com/photo-1604599340287-2042e85a3802?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZGVlcCUyMHNlYXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                      GameCard(text: "Pollutant\nMode ", imageURL: "https://imageio.forbes.com/specials-images/imageserve/63d2f255063d4369c089b915/Challenging-life-journey-of-endangered-sea-turtles-amid-polluted-water/960x0.jpg"),
                     
                    ],
                    
                  ),
                ),
              ),
              
              const SizedBox(height: 10,),
              
              Padding(
                padding: Constants.defaultPadding,
                child: const Text("Learn about Aquatic Ecosystem →", textAlign: TextAlign.start, 
                      style: TextStyle(
                        fontSize: 16, 
                        fontWeight: FontWeight.w600)
                ),
              ),
              const SizedBox(height: 10,),
              
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row (
                    children: [
                      
                
                      GestureDetector(
                        onTap: () {
                          Get.to(MyWebView(url: 'https://en.wikipedia.org/wiki/Mariana_Trench'));
                        },
                        child: GameCard(text: "Mariana\nTrench", imageURL: "https://geographical.co.uk/wp-content/uploads/shutterstock_1853507206-1-1.jpg")
                      ),
                      
                      GestureDetector(
                        onTap: () {
                          Get.to(MyWebView(url: 'https://www.britannica.com/science/epipelagic-zone'));
                        },
                        child: GameCard(text: "Epipelagic\nZone", imageURL: "https://www.thoughtco.com/thmb/QDG0XPKeG4bZdO7ptpLugEJm-_o=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/oceansunfish-markconlin-getty-56a5f7a65f9b58b7d0df515e.jpg")
                      ),
                      
                      GestureDetector(
                        onTap: () {
                          Get.to(MyWebView(url: 'https://en.wikipedia.org/wiki/Mesopelagic_zone'));
                        },
                        child: GameCard(text: "Mesopelagic\nZone", imageURL: "https://upload.wikimedia.org/wikipedia/commons/0/0c/Natural_Underwater_Frame_%28219417519%29.jpeg")
                      ),
                
                      
                       
                  
                    ],
                    
                  ),
                ),
              )
              
        
            ],
          ),
        ),
        
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 20,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
        
              icon: SvgPicture.asset("assets/1.svg",  height: 40,),
              label: 'Surface',
              activeIcon: SvgPicture.asset("assets/1.svg",height: 40),
            ),
            BottomNavigationBarItem(
        
              icon: SvgPicture.asset("assets/5.svg", height: 40),
              label: 'Underwater',
              activeIcon: SvgPicture.asset("assets/5.svg", height: 40),
            ),
        
            BottomNavigationBarItem(
        
              icon: SvgPicture.asset("assets/2.svg", height: 40),
              label: 'Seabed',
              activeIcon: SvgPicture.asset("assets/2.svg", height: 40),
            ),
            
          ],
          currentIndex: selectedIdx,
          selectedItemColor: Constants.primaryColor,
          onTap: _onItemTapped,
        ),
      ),
    
     );
  }
}