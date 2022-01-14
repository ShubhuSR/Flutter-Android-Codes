import 'package:coffee_shop_app_ui/constants/colors.dart';
import 'package:flutter/material.dart';

import 'icon_text.dart';


class StoreName extends StatelessWidget {
  const StoreName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Starbucks',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: const <Widget>[
              IconText(
                iconUrl: 'assets/distance.svg',
                title: '4,23 min',
              ),
              SizedBox(width: 60,),
              IconText(
                iconUrl: 'assets/distance.svg',
                title: '20 min',
              )
            ],
          )
        ],
      ),
    );
  }
}


