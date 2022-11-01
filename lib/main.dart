import 'package:flutter/material.dart';
import 'package:instaclone/DM.dart';
import 'package:instaclone/Home.dart';
import 'package:instaclone/Profile.dart';
import 'package:instaclone/ProfileTabBarPart.dart';
import 'package:instaclone/Search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, this.title = "Instagram"});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // this is all you need
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              child: Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/da/b8/4e/dab84e5ae5a049d075fcd49ee11bc39a.png')),
            ),
            Container(
              height: 50,
              child: Image(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png')),
            ),
            SizedBox()
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: Container(
                height: 50,
                child: Image(
                  image: NetworkImage(
                      'https://www.pngkey.com/png/full/286-2864878_facebook-messenger-icon-facebook-messenger-logo-black-and.png'),
                ),
              ),
              tooltip: 'DM',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => DM()));
              })
        ],

        //* / title: Text(widget.title),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: <Widget>[
          Home(),
          Search(),
          Container(
            color: Colors.red,
          ),
          ProfileTab(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            pageController.jumpToPage(index);
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_roll, color: Colors.black),
              label: 'Reels'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airline_seat_individual_suite_sharp,
                color: Colors.black,
              ),
              label: 'Activity'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  radius: 20.5,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://camo.githubusercontent.com/48b5c67f0baa5b41fc98c96dad8de4771b0fc583d6b3dda417c7f8e01e801028/68747470733a2f2f692e696d6775722e636f6d2f734a7a665a734c2e6a7067'),
                  )),
              label: 'Profile')
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}
