import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';

class HomeAppBar extends StatelessWidget {
  HomeAppBar({
    required this.pageTitle,
  });

  String pageTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundK,
      elevation: 0,
      title: Text(
        pageTitle as String,
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          icon: Icon(
            Icons.notifications_none_sharp,
            size: 28,
            color: primaryK,
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
    );
  }
}
