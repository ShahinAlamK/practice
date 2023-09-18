import 'package:flutter/material.dart';
import 'package:practice/style/size_config.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        title: const Text("Practice"),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getW(10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getH(10)),
              
              Container(
                height: getH(100),
                width: AppSize.width,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                      image:NetworkImage("https://marketplace.canva.com/EAFZNz2wY8A/1/0/1600w/canva-pink-blue-purple-modern-gradient-music-youtube-banner-7ORaPY-PkgA.jpg"))
                ),
              ),
              SizedBox(height: getH(20)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Great Service",style: TextStyle(fontSize:getW(18),fontWeight: FontWeight.w700),),
                  Text("See all",style: TextStyle(fontSize:getW(14),fontWeight: FontWeight.w400),),
                ],
              ),
              SizedBox(height: getH(8)),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) => Padding(
                    padding: EdgeInsets.only(right: getW(10)),
                    child: const SpecialCard(),
                  ))
                ),
              ),

              SizedBox(height: getH(20)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Great Service",style: TextStyle(fontSize:getW(18),fontWeight: FontWeight.w700),),
                  Text("See all",style: TextStyle(fontSize:getW(14),fontWeight: FontWeight.w400),),
                ],
              ),
              SizedBox(height: getH(8)),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(10, (index) => Padding(
                      padding: EdgeInsets.only(right: getW(10)),
                      child: const SpecialCard(),
                    ))
                ),
              ),

              SizedBox(height: getH(20)),
              
              Container(
                height: getH(100),
                width: AppSize.width,
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:NetworkImage("https://marketplace.canva.com/EAFZNz2wY8A/1/0/1600w/canva-pink-blue-purple-modern-gradient-music-youtube-banner-7ORaPY-PkgA.jpg"))
                ),
              ),
              SizedBox(height: getH(20)),


            ],
          ),
        )
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
    return Container(
      height: getH(150),
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Shakib Al Hasan",style: TextStyle(color: Colors.white,fontSize: getW(14)),),
            ],
          ),
        ),
      ),
    );
  }
}
