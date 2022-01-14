import 'package:coffee_shop_app_ui/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  const IconText({
    Key? key,
    this.iconUrl,
    this.title,
  }) : super(key: key);

  final String? iconUrl;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconUrl!, color: mTitleTextColor),
        const SizedBox(
          width: 6,
        ),
        Text(
          title!,
          style: TextStyle(
            color: mTitleTextColor,
          ),
        ),
      ],
    );
  }
}
