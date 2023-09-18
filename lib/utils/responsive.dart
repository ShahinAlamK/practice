import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key, this.mobile, this.tablet, this.desktop});

  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth >= 480){
        return mobile!;
      }else{
        return tablet!;
      }
    });
  }
}
