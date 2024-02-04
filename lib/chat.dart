import 'package:flutter/material.dart';
import 'main.dart';
class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Text("Messages", style: TextStyle(
            fontSize: 26,
          ),),
          SizedBox(
            height: 50,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 20,
                  child: Icon(Icons.person),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
