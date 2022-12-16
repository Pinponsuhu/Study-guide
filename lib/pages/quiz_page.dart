import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/quiz_result.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryK,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
        automaticallyImplyLeading: false,
        backgroundColor: primaryK,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [terK, backgroundK]),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      "30:29",
                      style: TextStyle(
                        color: primaryK,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.timer_outlined,
                  color: backgroundK,
                  size: 28,
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Text(
                  "Question 1",
                  style: TextStyle(
                    color: backgroundK,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "/20",
                  style: TextStyle(
                    color: backgroundK,
                    fontSize: 24,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Nine consecutive integers add up to 9. What is the product of these integers ?",
              style: TextStyle(
                color: backgroundK,
                fontSize: 22,
                height: 1.43,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CheckboxListTile(
              tileColor: backgroundK,
              value: true,
              checkColor: primaryK,
              onChanged: null,
              title: Text(
                "0",
                style: TextStyle(
                  color: primaryK,
                  fontSize: 18,
                  height: 1.43,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              tileColor: backgroundK,
              value: false,
              onChanged: null,
              title: Text(
                "77",
                style: TextStyle(
                  color: primaryK,
                  fontSize: 18,
                  height: 1.43,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              tileColor: backgroundK,
              value: false,
              onChanged: null,
              title: Text(
                "124",
                style: TextStyle(
                  color: primaryK,
                  fontSize: 18,
                  height: 1.43,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              tileColor: backgroundK,
              value: false,
              onChanged: null,
              title: Text(
                "30",
                style: TextStyle(
                  color: primaryK,
                  fontSize: 18,
                  height: 1.43,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40)),
                    backgroundColor: MaterialStateProperty.all(backgroundK),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizResult()));
                  },
                  child: Text("Next",
                      style: TextStyle(
                        color: primaryK,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
