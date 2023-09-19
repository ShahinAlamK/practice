import 'package:flutter/material.dart';
import 'package:practice/style/color.dart';
import 'package:practice/style/fonts.dart';
import 'package:practice/style/size_config.dart';
import 'package:practice/utils/app_string.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../component/round_button.dart';
import 'top_slider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.primary,
      appBar: buildAppBar(),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getW(10)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: getH(15)),
              const TopSlider(),

              SizedBox(height: getH(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Enrolled Course",style:AppFont.large.copyWith(fontSize: getW(14),color:AppColor.font),),
                  Text("See more",style:AppFont.regular.copyWith(fontSize: getW(14),color:AppColor.font),),
                ],
              ),
              SizedBox(height: getH(10)),
              const Enrolled(),

              SizedBox(height: getH(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Live Course",style:AppFont.large.copyWith(fontSize: getW(14),color:AppColor.font),),
                  Text("See more",style:AppFont.regular.copyWith(fontSize: getW(14),color:AppColor.font),),
                ],
              ),

            ],
          ),
        )
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor:AppColor.primary,
      elevation: 0,
      titleSpacing: 0,
      leading: Padding(
        padding: EdgeInsets.all(getW(10)),
        child: CircleAvatar(
          radius: getW(25),
          backgroundColor: const Color(0xfff5f3f4),
          backgroundImage: const NetworkImage(AppString.profile),
        ),
      ),
      title: Text(AppString.appName,style: AppFont.large.copyWith(color:AppColor.font)),
      actions: [
        RoundIcon(icon: SvgPicture.asset(AppIcon.search,height:getH(20),width:getW(20)), press: () { },),
        SizedBox(width: getW(15)),
        RoundIcon(icon: SvgPicture.asset(AppIcon.notification,height:getH(20),width:getW(20)), press: () { },),
        SizedBox(width: getW(10)),
      ],
    );
  }
}

class Enrolled extends StatelessWidget {
  const Enrolled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children:List.generate(10, (index) => const Padding(
          padding: EdgeInsets.only(right: 10),
          child: SpecialCard(),
        )),
      ),
    );
  }
}


class SpecialCard extends StatelessWidget {
  const SpecialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        children: [
          Container(
            height: getH(100),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getW(5)),
              color: Colors.blueGrey,
              image: const DecorationImage(
                fit: BoxFit.cover,
                  image: NetworkImage("https://cdn.ostad.app//course/photo/2023-03-29T06-44-24.054Z-flutter%20main%20course.jpeg"))
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: getW(5),vertical: getH(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Batch 4",style: AppFont.regular.copyWith(fontSize:getW(10)),),
                SizedBox(height: getH(5)),
                Text("App Development with Flutter",maxLines: 2,
                  style: AppFont.medium.copyWith(fontSize:getW(9)),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
