import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/add_lesson.dart';

class TopicDetails extends StatefulWidget {
  TopicDetails({Key? key}) : super(key: key);

  @override
  State<TopicDetails> createState() => _TopicDetailsState();
}

class _TopicDetailsState extends State<TopicDetails> {
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
          "Lesson Topic",
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddLesson(),
                ),
              );
            },
            icon: Icon(
              Icons.attachment_sharp,
              color: primaryK,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis iure perspiciatis at beatae rem neque doloremque commodi, ab, sunt illum possimus quam voluptatum nemo! Repudiandae vero fugiat dolorem, odit illo, impedit excepturi officiis eligendi optio deserunt molestiae quasi nihil quis qui ratione enim veritatis voluptates, corporis temporibus dolore? Repellat itaque esse dolores provident cupiditate ad incidunt tempora, quos quod molestiae impedit maiores quia, illum aliquam ipsa corrupti consequatur at deserunt necessitatibus? Accusamus aliquam voluptas quae asperiores, iste, itaque cumque id architecto maxime magnam aliquid nostrum sunt unde quod, eos ex facilis impedit ratione. Aperiam dignissimos ipsum alias veritatis autem, aliquid accusamus architecto deserunt voluptatum sapiente ex recusandae obcaecati sit enim, odit quam quod distinctio asperiores suscipit debitis omnis. Ducimus, perferendis?",
              style: TextStyle(
                color: terK,
                height: 1.8,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(backgroundK),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Next",
                          style: TextStyle(
                            color: primaryK,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.skip_next,
                          size: 20,
                          color: primaryK,
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
