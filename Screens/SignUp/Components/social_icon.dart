import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function()? press;
  const SocialIcon({
    Key? key, 
    required this.iconSrc, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
          width: 2,
          color: KPrimaryLightColor,
        ),
        shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 40,
          width: 40,        
        ),
      ),
    );
  }
}
// ignore: use_key_in_widget_constructors
