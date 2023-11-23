import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        //home: const AlertScreen(),
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => const HomeScreen(),
          'listview2': (BuildContext context) => const ListView2Screen(),
          'listview1': (BuildContext context) => const ListView1Screen(),
          'card': (BuildContext context) => const CardScreen(),
          'alert': (BuildContext context) => const AlertScreen(),
        });
  }
}


// mateapp crear app de flutter
