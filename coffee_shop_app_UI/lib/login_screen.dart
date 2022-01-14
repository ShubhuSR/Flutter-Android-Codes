import 'package:flutter/material.dart';

import 'constants/colors.dart';
import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color bg = mPrimaryColor;

    final sketch = Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(bg, BlendMode.overlay),
            image: const AssetImage("assets/cart2.jpg"),
            fit: BoxFit.cover),
      ),
    );

    final solganWord = Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        'Welcome Back!',
        style: TextStyle(
            fontWeight: FontWeight.w400, color: mPrimaryColor, fontSize: 40.0),
        textAlign: TextAlign.start,
      ),
    );

    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.mail_outline,
            color: bg,
          ),
          hintText: 'TechSR@gmail.com',
          labelText: 'E-mail'),
    );

    final password = TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.security,
            color: bg,
          ),
          hintText: '******',
          labelText: 'Password'),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
        },
        padding: const EdgeInsets.all(12.0),
        color: bg,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        child: const Text(
          'Log In',
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300),
        ),
      ),
    );

    final forgotLabel = FlatButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style:
              TextStyle(color: bg, fontSize: 15.0, fontWeight: FontWeight.w400),
        ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    color: bg,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Login',
                          style: TextStyle(
                              color: bg,
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            solganWord,
            const SizedBox(
              height: 25.0,
            ),
            email,
            const SizedBox(
              height: 25.0,
            ),
            password,
            const SizedBox(
              height: 25.0,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: forgotLabel,
            ),
            const SizedBox(
              height: 15.0,
            ),
            loginButton,
            const SizedBox(
              height: 25.0,
            ),
            sketch,
            // Expanded(child: sketch)
          ],
        ),
      ),
    );
  }
}
