import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';

class SelectSubjectWidget extends StatelessWidget {
  const SelectSubjectWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.indigo.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mathematics",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
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
                color: Colors.red.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Physics",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
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
                color: Colors.cyan.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Biology",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
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
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.lightGreen.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chemistry",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset(
                    "asset/images/enzyme.png",
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
                color: Colors.purple.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Geography",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset(
                    "asset/images/geography.png",
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
                color: Colors.pink.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Literature",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset(
                    "asset/images/literature.png",
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
