import 'package:flutter/material.dart';

import 'screens/home/home.dart';
import 'screens/authenticate/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        "home":(context) => Home(),
        "login":(context) => Login(),
        
      },
    );
  }
}