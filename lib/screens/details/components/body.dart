import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/constants.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

import 'icon_card.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            country: 'Russia',
            price: 440,
            title: 'Angelica',
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              Container(
                width: size.width / 2,
                height: 84,
                decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20))),
                child: TextButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: const Text('Buy Now',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Description',
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
