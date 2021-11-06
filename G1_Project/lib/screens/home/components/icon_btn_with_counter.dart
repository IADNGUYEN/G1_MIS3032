import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            height: getProportionateScreenWidth(40),
            width: getProportionateScreenWidth(60),
            decoration: BoxDecoration (
              color: Color(0xFF979797).withOpacity (0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(svgSrc),
          ),
                  ],
      ),
    );
  }
}
