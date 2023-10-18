import 'package:beneath_the_surface/explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void goToHomePage() {
    Get.to(ExplorePage());
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.2,
          image: AssetImage('assets/background/bg2.jpg'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child:  SvgPicture.asset("assets/logo.svg", width: 250),
                    
                ),
                const Padding(
                  padding:  EdgeInsets.only(left:20, right: 20),
                  child: Text(
                    'Connecting aquatic life with conservation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: goToHomePage, 
                  child: const Text("Start Exploration", style: TextStyle(color: Colors.white),)
                ),
                const SizedBox(height: 10,),
               

              ],
            ),
          ),
        ),
        
      ),
    );
  }
}