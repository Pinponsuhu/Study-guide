import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryK,
      appBar: AppBar(
        elevation: 1.5,
        backgroundColor: primaryK,
        title: Text(
          "Notification",
          style: TextStyle(
            color: backgroundK,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: backgroundK,
            )),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today",
              style: TextStyle(
                color: backgroundK,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.school,
                      color: primaryK,
                      size: 26,
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "The registration process for WAEC 2022/2023 has commenced",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: backgroundK,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Category: Education",
                              style: TextStyle(
                                color: terK,
                              ),
                            ),
                            Text(
                              "10 min ago",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: terK,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1.3,
              color: terK.withOpacity(0.6),
              height: 40,
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.leaderboard,
                      color: primaryK,
                      size: 26,
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "The results for this week quiz contest has been uploaded",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: backgroundK,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Category: Quiz",
                              style: TextStyle(
                                color: terK,
                              ),
                            ),
                            Text(
                              "10 min ago",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: terK,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Yesterday",
              style: TextStyle(
                color: backgroundK,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.shield,
                      color: primaryK,
                      size: 26,
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Your account was logged in from a different device",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: backgroundK,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Category: Security",
                              style: TextStyle(
                                color: terK,
                              ),
                            ),
                            Text(
                              "10 min ago",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: terK,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1.3,
              color: terK.withOpacity(0.6),
              height: 40,
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.badge_rounded,
                      color: primaryK,
                      size: 26,
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You have unlocked a new barge",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: backgroundK,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Category: Quiz",
                              style: TextStyle(
                                color: terK,
                              ),
                            ),
                            Text(
                              "10 min ago",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: terK,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
