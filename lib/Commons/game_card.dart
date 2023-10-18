// ignore_for_file: must_be_immutable
import 'dart:ui';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import '../Constants/constants.dart';


class GameCard extends StatelessWidget {
  String text = "SURFACE\nTRACKING";
  String imageURL = "https://t3.ftcdn.net/jpg/02/43/08/10/360_F_243081080_ybfkXen4PVRT4QSYpzMFjBUTlfg0O8eD.jpg";
  GameCard({Key? key, required this.text, required this.imageURL}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 100,
      width: 120,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect( borderRadius: BorderRadius.circular(10),child: Opacity(
            opacity: 0.6,
            child: FancyShimmerImage(imageUrl: imageURL))),
          Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                child:  Text(text, textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
          ),
        ],
      ),
    );
  }
}