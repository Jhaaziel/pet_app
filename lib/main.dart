import 'package:flutter/material.dart';
import 'package:pet_app/drawerScreen.dart';
import 'package:pet_app/homeScreen.dart';



void main() async {
  runApp(
    MaterialApp(home: HomePage(),));
  
}

class HomePage extends StatelessWidget {  //Button lateral esquerdo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      )
      
    );
  }
}


