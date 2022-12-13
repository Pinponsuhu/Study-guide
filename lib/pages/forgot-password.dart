import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_prep/constants/color.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundK,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundK,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: terK,
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 26 / 16,
              child: SvgPicture.asset('asset/svg/forgot.svg'),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Forgot \n Password?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: primaryK,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Don't worry! it happens. Please enter the email address associated with your account",
              style: TextStyle(
                fontSize: 18,
                color: terK,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 2, color: terK),
              ),
              child: Row(
                children: [
                  SizedBox(
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.alternate_email_rounded)),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email address",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            TextButton(
              onPressed: null,
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryK, borderRadius: BorderRadius.circular(8)),
                child: Text(
                  textAlign: TextAlign.center,
                  "Submit",
                  style: TextStyle(
                    color: backgroundK,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
