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
        child: Column(
          children: [
            SizedBox(height: getH(15)),
            const TopSlider(),

            SizedBox(height: getH(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Enrolled",style:AppFont.large.copyWith(fontSize: getW(14),color:AppColor.font),),
                Text("See more",style:AppFont.regular.copyWith(fontSize: getW(14),color:AppColor.font),),
              ],
            ),
            SizedBox(height: getH(10)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:List.generate(10, (index) => const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SpecialCard(),
                )),
              ),
            )

          ],
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





class SpecialCard extends StatelessWidget {
  const SpecialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getH(130),
      width: getW(120),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getW(5)),
        color: Colors.blueGrey.shade100,
        image: const DecorationImage(
          fit: BoxFit.cover,
            image: NetworkImage("https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcS2yCTSl4jxrRgdAa_7ron5792IkrWZyY53AdUQU6zeAPO98UsPJ4_i8e1uqT4jxSa9kZf7p61yhyQwSo8"))
      ),
      child:Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(colors:[
            Colors.black.withOpacity(.6),
            Colors.grey.withOpacity(.1),
          ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
          ),
          borderRadius: BorderRadius.circular(getW(5))
        ),
        child: Padding(
          padding: EdgeInsets.all(getW(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Batch 4",style: AppFont.regular.copyWith(color: Colors.white,fontSize:getW(10)),),
              Text("App Development with Flutter",style: AppFont.regular.copyWith(color: Colors.white,fontSize:getW(10)),),
            ],
          ),
        ),
      ),
    );
  }
}
