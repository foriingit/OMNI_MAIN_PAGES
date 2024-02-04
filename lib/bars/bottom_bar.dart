import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
 class BottomBar extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       bottomNavigationBar:CurvedNavigationBar(
         color: Color.fromRGBO(21, 21, 21, 1),
         backgroundColor: Colors.transparent,
         items: [
           Icon(Icons.message_outlined, color: Color.fromRGBO(255, 201, 151, 1)),
           Icon(Icons.home_outlined, color: Color.fromRGBO(255, 201, 151, 1)),
           Icon(Icons.settings_outlined, color: Color.fromRGBO(255, 201, 151, 1))
         ],
         buttonBackgroundColor: Color.fromRGBO(251, 139, 37, 1),
       ),
     );
   }
 }
