import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  const RoundIcon({
    super.key, required this.icon, required this.press,
  });
  final Widget icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          decoration: const BoxDecoration(
              color:Color(0xfff5f3f4),
              shape: BoxShape.circle
          ),
          padding: const EdgeInsets.all(7),
          child: icon),
    );
  }
}