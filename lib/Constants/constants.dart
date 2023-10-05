import 'package:flutter/material.dart';

class Constants{
    static Color primaryColor = Colors.lightBlueAccent;
    static Color secondaryColor = Colors.black;

    static double paddingSize = 20;
    static final defaultPadding = EdgeInsets.all(20);
    static final defaultBorderRadius = BorderRadius.circular(12);
    static final defaultBoxDecoration = BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.grey[200] ?? Colors.black, width: 1),
        borderRadius: BorderRadius.circular(12),
    );
    static final defaultColorBoxDecoration1 = BoxDecoration(
                    color: Constants.primaryColor,
                    border: Border.all(color: Colors.grey[200] ?? Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(12),
    );
    static final defaultColorBoxDecoration2 = BoxDecoration(
                    color: Constants.secondaryColor,
                    border: Border.all(color: Colors.grey[200] ?? Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(12),
    );


}