import 'package:flutter/material.dart';
import 'package:razorpay_payment_gateway_demo/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter RazorePay',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

