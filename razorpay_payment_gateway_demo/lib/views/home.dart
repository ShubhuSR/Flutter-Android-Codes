import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Razorpay? razorpay;
  TextEditingController amountTextController = new TextEditingController();
  TextEditingController nameTextController = new TextEditingController();
  TextEditingController contactTextController = new TextEditingController();
  TextEditingController emailTextController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay!.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay!.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay!.clear();
  }

  void openCheckout() {
    var options = {
      "key": "rzp_test_poGkAHDxOSdvhO",
      "amount": num.parse(amountTextController.text) * 100,
      "name:": nameTextController.text,
      "description": "Payment for new product purchase",
      "prefill": {
        "contact": contactTextController.text,
        "email": emailTextController.text
      },
      "external": {
        "wallets": ["paytm"]
      }
    };
    try {
      razorpay!.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerPaymentSuccess() {
    print('Payment Success');

    Fluttertoast.showToast(msg: 'Payment Success');
  }

  void handlerErrorFailure() {
    print('Payment Error');
    Fluttertoast.showToast(msg: 'Payment Error');
  }

  void handlerExternalWallet() {
    print('External Wallet');
    Fluttertoast.showToast(msg: 'External Wallet');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Razorepay demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameTextController,
              decoration: InputDecoration(hintText: 'Enter your Name'),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: amountTextController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Amounts to Pay'),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: contactTextController,
              decoration: InputDecoration(hintText: 'Enter Contact no'),
              maxLength: 10,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: emailTextController,
              decoration: InputDecoration(hintText: 'Enter email id'),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  openCheckout();
                },
                child: Text('Click Here to Pay Now')),
          ],
        ),
      ),
    ));
  }
}
