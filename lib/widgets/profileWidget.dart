import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 70,
                minRadius: 50,
                backgroundImage: AssetImage("asset/images/me.jpg"),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Pinponsuhu Joseph",
            style: TextStyle(
              // color: primaryK,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "PinponsuhuJoseph@email.com",
            style: TextStyle(
              color: terK,
              fontSize: 16,
              fontWeight: FontWeight.w100,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 13, horizontal: 32)),
                backgroundColor:
                    MaterialStateProperty.all(primaryK.withOpacity(0.9)),
              ),
              child: Text(
                "View Profile",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: backgroundK,
                ),
              )),
          Divider(
            color: terK.withOpacity(0.4),
            thickness: 1.2,
            height: 40,
          ),
          ListTile(
            leading: Icon(
              Icons.av_timer,
            ),
            title: Text("Progress"),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 12,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.view_timeline_outlined,
            ),
            title: Text("Timetable"),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 12,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 12,
            ),
          ),
          ListTile(
            leading: Icon(Icons.rate_review_outlined),
            title: Text("Terms of service"),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 12,
            ),
          ),
          ListTile(
            leading: Icon(Icons.report_problem_outlined),
            title: Text("Feedback"),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 12,
            ),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text("Logout"),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}
