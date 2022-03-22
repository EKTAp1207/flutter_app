import 'package:first_app/otp.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'home.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(context)=>HomeScreen(),
        'otp':(context)=>MyOtp(),
      },

    );
  }
}



