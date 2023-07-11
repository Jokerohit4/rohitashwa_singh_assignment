

import 'package:flutter/cupertino.dart';

abstract class DesignValues{


 static getHeight(double height,context){
   return  MediaQuery.of(context).size.height*height/100;
 }

 static getWidth(double width,context){
   return  MediaQuery.of(context).size.width*width/100;
 }

 static spacedHeightOne(context){
   return SizedBox(
     height: DesignValues.getHeight(1, context),
   );
 }

 static spacedHeightTwo(context){
  return SizedBox(
     height: DesignValues.getHeight(2, context),
   );
 }
}