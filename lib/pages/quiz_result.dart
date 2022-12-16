import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';

class QuizResult extends StatefulWidget {
  QuizResult({Key? key}) : super(key: key);

  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundK,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: backgroundK,
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:
                    Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black))),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Report",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: primaryK,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 68,
                            backgroundImage: AssetImage("asset/images/me.jpg"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Pinponsuhu Joseph",
                            style: TextStyle(
                              // color: primaryK,
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Question Overview",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: primaryK,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: PieChart(
                          PieChartData(
                            sectionsSpace: 0,
                            centerSpaceRadius: 60,
                            sections: [
                              PieChartSectionData(
                                  value: 80.00,
                                  color: Colors.green.shade400,
                                  title: "Passed",
                                  titleStyle: TextStyle(
                                    color: backgroundK,
                                  ),
                                  showTitle: true),
                              PieChartSectionData(
                                  value: 20.00,
                                  color: Colors.red.shade400,
                                  titleStyle: TextStyle(
                                    color: backgroundK,
                                  ),
                                  title: "Failed",
                                  showTitle: true)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Answer Breakdown",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: primaryK,
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}
