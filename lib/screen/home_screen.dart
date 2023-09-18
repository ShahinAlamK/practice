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
            )
          ],
        ),
      ),
    );
  }
}
