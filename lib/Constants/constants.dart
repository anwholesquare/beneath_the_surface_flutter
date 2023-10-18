import 'package:flutter/material.dart';

class Constants{
    static Color? primaryColor =  Colors.blue[500];
    static Color secondaryColor = Colors.black;

    static double paddingSize = 20;
    static const defaultPadding = EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10);
    static final defaultBorderRadius = BorderRadius.circular(12);
    static final defaultBoxDecoration = BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.grey[200] ?? Colors.black, width: 1),
        borderRadius: BorderRadius.circular(24),
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