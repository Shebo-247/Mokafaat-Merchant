import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/sellerscreen/login/seller_signup2.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final pubProv = Provider.of<PublicProvider>(context);
    if (pubProv.langValue == "Ar") {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/splash.png',
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 20,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/mm.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.37,
                    ),
                    child: Container(
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        //  margin: EdgeInsets.all(5),
                        elevation: 8.5,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              TextField(
                                controller: _email,
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText: "البريد الالكتروني"),
                              ),
                              TextField(
                                controller: _password,
                                obscureText: true,
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText: "كلمه السر"),
                              ),
                              Container(
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  color: Theme.of(context).accentColor,
                                  onPressed: () {
                                    pubProv.loginApi(
                                        context, _email.text, _password.text);
                                  },
                                  child: Text(
                                    "تسجيل دخول",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (c, a1, a2) =>
                                            SellerSignup2(),
                                        transitionsBuilder:
                                            (c, anim, a2, child) =>
                                                FadeTransition(
                                                    opacity: anim,
                                                    child: child),
                                        transitionDuration:
                                            Duration(milliseconds: 300),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "انضم الينا كتاجر",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Theme.of(context).primaryColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    left: 30,
                    bottom: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45))),
                            onPressed: () async {
                              pubProv.langValue = 'En';
                              pubProv.update();
                            },
                            child: Text(
                              "Eng",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45))),
                            onPressed: () async {
                              pubProv.langValue = 'Ar';
                              pubProv.update();
                            },
                            child: Text(
                              "عربي",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/splash.png',
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 20,
              // height: 20,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/mm.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.37,
                    ),
                    child: Container(
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        elevation: 12.5,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              TextField(
                                controller: _email,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText: "mukafaat@gmail.com"),
                              ),
                              TextField(
                                controller: _password,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText: "password"),
                              ),
                              Container(
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  color: Theme.of(context).accentColor,
                                  onPressed: () {
                                    pubProv.loginApi(
                                        context, _email.text, _password.text);
                                  },
                                  child: Text(
                                    "Log in",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (c, a1, a2) =>
                                            SellerSignup2(),
                                        transitionsBuilder:
                                            (c, anim, a2, child) =>
                                                FadeTransition(
                                                    opacity: anim,
                                                    child: child),
                                        transitionDuration:
                                            Duration(milliseconds: 300),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Join As Merchant",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Theme.of(context).primaryColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    left: 30,
                    bottom: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45))),
                            onPressed: () async {
                              // setState(() async {
                              pubProv.langValue = 'En';
                              pubProv.update();
                              // final SharedPreferences prefs =
                              //     await SharedPreferences.getInstance();
                              // prefs.setString('langValue', 'En');
                              // });
                            },
                            child: Text(
                              "Eng",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45))),
                            onPressed: () async {
                              // setState(() async {
                              pubProv.langValue = 'Ar';
                              pubProv.update();
                              // final SharedPreferences prefs =
                              //     await SharedPreferences.getInstance();
                              // prefs.setString('langValue', 'Ar');
                              // });
                            },
                            child: Text(
                              "عربي",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
