import 'package:flutter/material.dart';
import 'package:scratch/Chat/widget/conversationList.dart';
import 'model/chatUsersModel.dart';


class ChatPage extends StatefulWidget {

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Chief Accountant", messageText: "Confirm reports", imageURL: "", time: "Now"),
    ChatUsers(name: "Chief", messageText: "Okay", imageURL: "", time: "Now"),
    ChatUsers(name: "Manager", messageText: "Thanks", imageURL: "", time: "Now"),
    ChatUsers(name: "Accountant", messageText: "You're welcome", imageURL: "", time: "Now"),
  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Messages", style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),),
                    IconButton(icon: Icon(Icons.search, size: 35,), onPressed: (){},)
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}


