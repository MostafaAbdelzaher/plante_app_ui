import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/constants.dart';

class IconCard extends StatelessWidget {
  final String icon;
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 63,
      width: 63,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 15),
              color: kPrimaryColor.withOpacity(0.22),
              blurRadius: 22),
          const BoxShadow(
              offset: Offset(-15, -15), blurRadius: 20, color: Colors.white),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
