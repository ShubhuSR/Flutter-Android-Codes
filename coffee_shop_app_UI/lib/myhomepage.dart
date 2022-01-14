import 'package:coffee_shop_app_ui/login_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const solgan = Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          'Get the best coffee in Town!',
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.brown, fontSize: 40.0),
          textAlign: TextAlign.center,
        ));

    final registerButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: 150,
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            //Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsPage()));
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.all(12),
            // color: Colors.brown,
          ),
          child: const Text(
            'Register',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),
    );
    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: 150,
        height: 40,
        child: OutlineButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown),
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.all(12),
          color: Colors.brown,
          child: const Text(
            'Login',
            style: TextStyle(color: Colors.brown, fontSize: 12.0),
          ),
        ),
      ),
    );

    final googleButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 40,
        width: 10,
        child: OutlineButton(
          onPressed: () => null,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/google_logo.png'),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign In with Google",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
          highlightedBorderColor: Colors.blue,
          color: Colors.blue,
          borderSide: const BorderSide(color: Colors.blue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/coffe_cart.jpeg"),
                            fit: BoxFit.scaleDown),
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                      children: <Widget>[
                        const SizedBox(
                          height: 40.0,
                        ),
                        solgan,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[loginButton, registerButton],
                        ),
                        googleButton
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
