import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/login/login.dart';
import 'package:weather_app/login/sign_in.dart';
import 'package:weather_app/restaurant/restaurant_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
     // home: Login(),
      home: RestaurantScreen(),
      routes: {
        Login.routeName: (context) => Login(),
        SignIn.routeName: (context) => SignIn(),
      },
    );


  }
}

