import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/quiz_page.dart';
import 'package:school_prep/pages/topic_details.dart';

class SubjectDetails extends StatefulWidget {
  SubjectDetails({Key? key}) : super(key: key);

  @override
  State<SubjectDetails> createState() => _SubjectDetailsState();
}

class _SubjectDetailsState extends State<SubjectDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundK,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
              size: 20,
            )),
        elevation: 0,
        title: Text(
          "Subject Overview",
          style: TextStyle(
            // fontSize: 15,
            color: primaryK,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: backgroundK,
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.save,
              color: primaryK,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 28, horizontal: 18),
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
                              fontSize: 22,
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
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 9,
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
                      height: 110,
                      width: 110,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "About",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: primaryK,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Beatae veniam nostrum deserunt cumque atque illo hic amet odio tenetur non, commodi cum porro accusantium eveniet! Perferendis, a ab. Nobis quasi, a iure, corporis, reiciendis quam iste quia labore facilis repellat doloribus corrupti aperiam? Nam nesciunt inventore laborum nobis delectus nemo!",
              style: TextStyle(
                color: terK,
                height: 1.8,
                fontSize: 18,
              ),
            ),
            Divider(
              color: terK.withOpacity(0.4),
              thickness: 1.2,
              height: 40,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "All Topics",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: primaryK,
              ),
            ),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizPage()));
                },
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  "Topic goes here",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "20mins 30sec",
                    style: TextStyle(
                      fontSize: 15,
                      color: terK,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                minLeadingWidth: 30,
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.35),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.check,
                    size: 20,
                    color: Colors.green,
                  ),
                )),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TopicDetails()));
                },
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(
                      color: backgroundK,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  "Topic goes here",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "20mins 30sec",
                    style: TextStyle(
                      fontSize: 15,
                      color: terK,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                minLeadingWidth: 30,
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.35),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.check,
                    size: 20,
                    color: Colors.green,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
