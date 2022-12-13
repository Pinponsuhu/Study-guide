import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';

class LeadershipTopWidget extends StatelessWidget {
  const LeadershipTopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            // fit: StackFit.passthrough,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan.shade400,
                        offset: const Offset(
                          1.4,
                          1.4,
                        ),
                        blurRadius: 2.4,
                        spreadRadius: 1.0,
                      ),
                    ],
                    border: Border.all(
                      width: 2.2,
                      color: Colors.cyan,
                    ),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: AssetImage("asset/images/me.jpg"),
                  radius: double.infinity,
                ),
              ),
              Positioned(
                  top: 60.0,
                  left: 20,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.cyan, shape: BoxShape.circle),
                    child: Text(
                      textAlign: TextAlign.center,
                      "2",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: primaryK,
                      ),
                    ),
                  ))
            ],
          ),
          Stack(
            // fit: StackFit.passthrough,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber.shade400,
                        offset: const Offset(
                          2.3,
                          2.4,
                        ),
                        blurRadius: 3.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    border: Border.all(
                      width: 2.4,
                      color: Colors.amber,
                    ),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: AssetImage("asset/images/me.jpg"),
                  radius: double.infinity,
                ),
              ),
              Positioned(
                  top: 85.0,
                  left: 38,
                  child: Container(
                    padding: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        color: Colors.amber, shape: BoxShape.circle),
                    child: Text(
                      textAlign: TextAlign.center,
                      "1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryK,
                      ),
                    ),
                  ))
            ],
          ),
          Stack(
            // fit: StackFit.passthrough,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lime.shade400,
                        offset: const Offset(
                          1.4,
                          1.4,
                        ),
                        blurRadius: 3.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    border: Border.all(
                      width: 2.2,
                      color: Colors.lime,
                    ),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: AssetImage("asset/images/me.jpg"),
                  radius: double.infinity,
                ),
              ),
              Positioned(
                  top: 60.0,
                  left: 20,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.lime, shape: BoxShape.circle),
                    child: Text(
                      textAlign: TextAlign.center,
                      "3",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: primaryK,
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
