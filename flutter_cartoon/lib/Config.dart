import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Device{
 static device_top(BuildContext context){
    final double topPadding = MediaQuery.of(context).padding.top;

    return topPadding;
 }

 static device_bottom(BuildContext context){
   final double bottomPadding = MediaQuery.of(context).padding.bottom;
   return bottomPadding;
 }

 static device_width(BuildContext context){
   final double width = MediaQuery.of(context).size.width;

   return width;
 }

 static device_height(BuildContext context){
   final double height = MediaQuery.of(context).size.height;

   return height;
 }

}