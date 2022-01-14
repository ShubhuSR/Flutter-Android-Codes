import 'package:coffee_shop_app_ui/constants/colors.dart';
import 'package:flutter/material.dart';


class Address extends StatelessWidget {
  const Address({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Address',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6,),
          Text(
            '3 Michel Bakhoum\n Dokki,Cairo',
            style: TextStyle(
              color: mTitleTextColor,
            ),
          )
        ],
      ),
    );
  }
}
