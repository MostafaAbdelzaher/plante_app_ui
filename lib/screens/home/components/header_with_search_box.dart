import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kPagingTouchSlop * 2),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(36),
                  bottomLeft: Radius.circular(36),
                )),
            child: Row(
              children: [
                Text(
                  " Hi Uishopy!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const Spacer(),
                Image.asset('assets/images/logo.png')
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  left: kDefaultPadding, right: kDefaultPadding),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: const Offset(
                      0,
                      10,
                    ),
                    color: kPrimaryColor.withOpacity(0.23),
                    blurRadius: 50),
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
              height: 54,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search",
                          hintStyle:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
