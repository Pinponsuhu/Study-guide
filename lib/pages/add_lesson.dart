import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:school_prep/constants/color.dart';

class AddLesson extends StatefulWidget {
  AddLesson({Key? key}) : super(key: key);

  @override
  State<AddLesson> createState() => _AddLessonState();
}

class _AddLessonState extends State<AddLesson> {
  HtmlEditorController controller = HtmlEditorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onPressed: null,
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
          child: HtmlEditor(
            controller: controller, //required
            htmlEditorOptions: HtmlEditorOptions(
              hint: "Type you Text here",
            ),
            htmlToolbarOptions:
                HtmlToolbarOptions(toolbarType: ToolbarType.nativeGrid),
            otherOptions: OtherOptions(
              height: 400,
            ),
          ),
        ));
  }
}
