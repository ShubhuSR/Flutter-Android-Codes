import 'package:coffee_shop_app_ui/constants/colors.dart';
import 'package:flutter/material.dart';


class MyLine extends StatelessWidget {
  const MyLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 5,
      decoration: BoxDecoration(
        color: mTitleTextColor,
        borderRadius: BorderRadius.circular(2.5),
      ),
    );
  }
}
