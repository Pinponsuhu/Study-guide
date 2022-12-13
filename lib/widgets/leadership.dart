import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/widgets/leadershiptop.dart';

class Leadership extends StatefulWidget {
  Leadership({Key? key}) : super(key: key);

  @override
  State<Leadership> createState() => _LeadershipState();
}

class _LeadershipState extends State<Leadership> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        LeadershipTopWidget(),
        SizedBox(
          height: 24,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
          decoration: BoxDecoration(
            color: backgroundK,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Your position",
                style: TextStyle(
                  color: primaryK,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                "201",
                style: TextStyle(
                  color: primaryK,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("asset/images/me.jpg"),
                    radius: 22,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Pinponsuhu Joseph",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "4",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.35),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(2),
                    child: Icon(
                      Icons.arrow_drop_up,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("asset/images/me.jpg"),
                    radius: 22,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Pinponsuhu Joseph",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "5",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.35),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(2),
                    child: Icon(
                      Icons.arrow_drop_up,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("asset/images/me.jpg"),
                    radius: 22,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Pinponsuhu Joseph",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "6",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.35),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(2),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
