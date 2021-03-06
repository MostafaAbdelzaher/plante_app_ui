import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: Row(
        children: [
          Expanded(
              child: SizedBox(
            height: size.height * 0.8,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg')),
                  ),
                  const Spacer(),
                  const IconCard(icon: "assets/icons/sun.svg"),
                  const IconCard(icon: "assets/icons/icon_2.svg"),
                  const IconCard(icon: "assets/icons/icon_3.svg"),
                  const IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            ),
          )),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    color: kPrimaryColor.withOpacity(0.30),
                    blurRadius: 60,
                  )
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                image: const DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage('assets/images/img.png'),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
