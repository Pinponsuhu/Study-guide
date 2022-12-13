import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/login.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              child: SvgPicture.asset('asset/svg/login.svg'),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: primaryK,
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
                      icon: Icon(Icons.person_outline_rounded),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Full name",
                      ),
                    ),
                  ),
                ],
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
                        onPressed: null, icon: Icon(Icons.phone_outlined)),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone number",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
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
                  "Continue",
                  style: TextStyle(
                    color: backgroundK,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: primaryK,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
