import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../style/size_config.dart';
import '../../utils/app_string.dart';

class TopSlider extends StatelessWidget {
  const TopSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount:AppString.bannerList.length,
      options: CarouselOptions(
          autoPlay: true,
          pageSnapping: true
      ),
      itemBuilder: (context,index,child){
        return viewCard(index);
      },
    );
  }

  Widget viewCard(int index) {
    return Container(
      height: getH(120),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: getW(5)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade100,
          image:DecorationImage(
              fit: BoxFit.cover,
              image:NetworkImage(AppString.bannerList[index]))
      ),
    );
  }
}