import 'package:flutter/material.dart';
import 'package:testing/plantScreens/maize_screen.dart';


void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: MaizeScreen.id,
      routes: {
        MaizeScreen.id :(context) =>const MaizeScreen()
      },
    );
  }
}