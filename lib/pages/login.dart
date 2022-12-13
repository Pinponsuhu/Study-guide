import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/forgot-password.dart';
import 'package:school_prep/pages/home.dart';
import 'package:school_prep/pages/register.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundK,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundK,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
              "Login",
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
                        onPressed: null, icon: Icon(Icons.lock_outline)),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_outlined)),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      textAlign: TextAlign.right,
                      "Forgot Password?",
                      style: TextStyle(
                          color: primaryK,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
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
                  "Login",
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
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    child: Text(
                      "Register",
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
