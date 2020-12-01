import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

import 'scr/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PublicProvider()),
      ],
      child: MaterialApp(
        title: 'Mukafaat Merchant',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            splashColor: Color.fromRGBO(63, 0, 153, 1),
            primaryColor: Color.fromRGBO(63, 0, 153, 1),
            accentColor: Colors.orange[700],
            platform: TargetPlatform.iOS,
            fontFamily: 'mainfont'),
        home: LoginScreen(),
      ),
    );
  }
}
