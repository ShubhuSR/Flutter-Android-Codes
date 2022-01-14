import 'package:coffee_shop_app_ui/widgets/address.dart';
import 'package:coffee_shop_app_ui/widgets/my_line.dart';
import 'package:coffee_shop_app_ui/widgets/store_name.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/map.png'), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 60),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(9),
                  topRight: Radius.circular(9),
                ),
              ),
              child: Column(
                children: const <Widget>[MyLine(), StoreName(), Address()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
