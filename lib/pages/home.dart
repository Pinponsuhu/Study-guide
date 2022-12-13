import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/notification.dart';
import 'package:school_prep/widgets/homewidget.dart';
import 'package:school_prep/widgets/leadership.dart';
import 'package:school_prep/widgets/profileWidget.dart';
import 'package:school_prep/widgets/selectsubject.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screen = [
    {'widget': HomeWidget(), 'appbar': "Home"},
    {'widget': SelectSubjectWidget(), 'appbar': "Subjects"},
    {'widget': Leadership(), 'appbar': "Leadership"},
    {'widget': ProfileWidget(), 'appbar': "Settings"},
  ];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screen[screenIndex]['appbar'] == 'Leadership'
          ? primaryK
          : backgroundK,
      appBar: AppBar(
        backgroundColor: screen[screenIndex]['appbar'] == 'Leadership'
            ? primaryK
            : backgroundK,
        elevation: screen[screenIndex]['appbar'] == 'Leadership' ? 3.2 : 0,
        title: Text(
          screen[screenIndex]['appbar'] as String,
          style: TextStyle(
            color: screen[screenIndex]['appbar'] == 'Leadership'
                ? backgroundK
                : Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
            },
            icon: Icon(
              Icons.notifications_none_sharp,
              size: 28,
              color: screen[screenIndex]['appbar'] == 'Leadership'
                  ? backgroundK
                  : primaryK,
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => ProfileScreen()));
          //   },
          //   child: SizedBox(
          //     child: Image.asset(
          //       "asset/images/gamer.png",
          //       height: 42,
          //       width: 42,
          //     ),
          //   ),
          // ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
      body: screen[screenIndex]['widget'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          elevation: screen[screenIndex]['appbar'] == 'Leadership' ? 3.2 : 1.0,
          onTap: (value) {
            setState(() {
              screenIndex = value;
            });
          },
          currentIndex: screenIndex,
          unselectedIconTheme: IconThemeData(
            color: terK,
          ),
          selectedItemColor: screen[screenIndex]['appbar'] == 'Leadership'
              ? primaryK
              : backgroundK,
          selectedLabelStyle: TextStyle(
            // inherit: false,
            color: screen[screenIndex]['appbar'] == 'Leadership'
                ? primaryK
                : primaryK,
          ),
          selectedIconTheme: IconThemeData(
            color: screen[screenIndex]['appbar'] == 'Leadership'
                ? primaryK
                : backgroundK,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: primaryK,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded),
              label: "Subjects",
              backgroundColor: primaryK,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard_rounded),
              label: "Leadership",
              backgroundColor: backgroundK,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: primaryK,
            ),
          ]),
    );
  }
}
