import 'package:scratch/change_password.dart';
import 'package:scratch/edit_profile.dart';

import 'bars/bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Chat/chatPage.dart';
import 'settings.dart';
import 'change_password.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person_pin, color: Colors.yellow,),
          backgroundColor: Color.fromRGBO(21, 21, 21, 1),
          title: Text('Имя Фамилия Отчество', style: TextStyle(
            color: Colors.white
          ),),
        ),
          bottomNavigationBar: CurvedNavigationBar(
              index: index,
              height: 60,
              onTap: (selectedIndex){
                setState(() {
                  index=selectedIndex;
                });
              },
              color: Color.fromRGBO(21, 21, 21, 1),
              backgroundColor: Colors.transparent,
              items: [
                Icon(Icons.message_outlined, color: Color.fromRGBO(255, 201, 151, 1)),
                Icon(Icons.home_outlined, color: Color.fromRGBO(255, 201, 151, 1)),
                Icon(Icons.settings_outlined, color: Color.fromRGBO(255, 201, 151, 1))
              ],
              buttonBackgroundColor: Color.fromRGBO(251, 139, 37, 1),
            ),
        body:
            Container(

                alignment: Alignment.center,
                child:getSelectedWidget(index: index))

        ),
    );
  }
}

class reports extends StatefulWidget {
  const reports({
    Key? key,
  }) : super(key: key);

  @override
  State<reports> createState() => _reportsState();
}

class _reportsState extends State<reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Text("Please, confirm reports", style: TextStyle(
          fontSize: 26,
        )),
      )
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
  Key? key,
}) : super(key: key);


  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(images,pagePosition,active);
              }),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length,activePage)),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child:
            Text("Please, confirm reports", style: TextStyle(
              fontSize: 26,
            )),
          ),
        )
      ],
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 400),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.network(images[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}

Widget getSelectedWidget ({required int index}){
  Widget widget;
  switch(index){
    case 0:
      widget=  ChatPage();
      break;
    case 1:
      widget = Carousel();
      break;
    default:
      widget= const SettingsPage2();
      break;
  }
  return widget;
}