import 'package:flutter/material.dart';

class AppSize{
  static MediaQueryData ? _queryData;
  static double? height;
  static double? width;
  static double? screenHeight;
  static double? screenWidth;
  static Orientation? orientation;
  init(BuildContext context){
    _queryData=MediaQuery.of(context);
    height=_queryData!.size.height;
    width=_queryData!.size.width;
    orientation=_queryData!.orientation;
    screenHeight=height!/100;
    screenWidth=width!/100;
  }
}

double getH(double height){
  double screenH=AppSize.height!;
  return(height/690)*screenH;
}

double getW(double width){
  double screenW=AppSize.width!;
  return(width/360)*screenW;
}