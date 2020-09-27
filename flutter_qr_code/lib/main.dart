// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:barcode_scan/barcode_scan.dart';
// import 'package:flutter/services.dart';
//
// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     ));
//
// class HomePage extends StatefulWidget {
//   @override
//   HomePageState createState() {
//     return new HomePageState();
//   }
// }
//
// class HomePageState extends State<HomePage> {
//   String result = "QR Code Scanner !";
//
//   Future _scanQR() async {
//     try {
//       String qrResult = await BarcodeScanner.scan();
//       setState(() {
//         result = qrResult;
//       });
//     } on PlatformException catch (ex) {
//       if (ex.code == BarcodeScanner.CameraAccessDenied) {
//         setState(() {
// //          result = "Camera permission was denied";
//         });
//       } else {
//         setState(() {
//           result = "Unknown Error $ex";
//         });
//       }
//     } on FormatException {
//       setState(() {
// //        result = "You pressed the back button before scanning anything";
//       });
//     } catch (ex) {
//       setState(() {
//         result = "Unknown Error $ex";
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//      home: DefaultTabController(
//        length: 2,
//        child: Scaffold(
//          appBar: AppBar(
//            title: Text("QR Scanner"),
//            bottom: TabBar(
//              tabs: <Widget>[
//                Tab(icon:Icon(Icons.add_a_photo)),
//                Tab(icon:Icon(Icons.cloud_download)),
// //               Text("Scan QR"),
// //               Text("My QR Code")
//              ],
//            ),
//          ),
//       body: TabBarView(
//         children: <Widget>[
//           Text("Scan Tab Selected"),
//           Text("Generate code Tab Selected"),
//         ],
//       ),
//     ),
//     ),
//     );
//   }
// }
//
// class ScanPage extends StatefulWidget{
//   @override
//   Scan_Page createState() {
//     return Scan_Page();
//   }
// }
// class Scan_Page extends State<ScanPage>{
//   @override
//   Widget build(BuildContext context) {
//   return Center(
// //    floatingActionButton: FloatingActionButton.extended(
// //        icon: Icon(Icons.camera_alt),
// //        label: Text("Scan"),
// //        backgroundColor: Colors.blue,
// //        onPressed: _scanQR,
// //      ),
// //      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//   );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String result = "Hey there !";

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied";
        });
      } else {
        setState(() {
          result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scanner"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.add_a_photo,
              color: Colors.white,
            ),
            onPressed: _scanQR,
          ),
        ],
      ),
      body: Center(
        child: Text(
          result,
          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("Scan"),
        onPressed: _scanQR,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}