import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/subject-details.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // SizedBox(
          //   height: 12,
          // ),
          Text(
            "Hey, \nPinponsuhu",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: terK.withOpacity(0.4),
              borderRadius: BorderRadius.circular(8),
              // border: Border.all(width: 2, color: terK),
            ),
            child: Row(
              children: [
                SizedBox(
                  child: IconButton(onPressed: null, icon: Icon(Icons.search)),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for subjects",
                        hintStyle: TextStyle(
                          color: terK,
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Continue Studying",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubjectDetails()));
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.red.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Physics",
                          style: TextStyle(
                            color: backgroundK,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "40 lessons",
                          style: TextStyle(
                            color: backgroundK,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 7,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: backgroundK,
                                width: 1.0,
                              )),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                height: constraints.maxHeight,
                                width: 20,
                                color: backgroundK,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Image.asset(
                    "asset/images/physics.png",
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mathematics",
                          style: TextStyle(
                            color: backgroundK,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "32 lessons",
                          style: TextStyle(
                            color: backgroundK,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 7,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: backgroundK,
                                width: 1.0,
                              )),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                height: constraints.maxHeight,
                                width: 20,
                                color: backgroundK,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Image.asset(
                    "asset/images/math.png",
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.green.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Biology",
                          style: TextStyle(
                            color: backgroundK,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "23 lessons",
                          style: TextStyle(
                            color: backgroundK,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 7,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: backgroundK,
                                width: 1.0,
                              )),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                height: constraints.maxHeight,
                                width: 20,
                                color: backgroundK,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Image.asset(
                    "asset/images/dna.png",
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
