import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/home.dart';
import 'package:school_prep/pages/login.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundK,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundK,
        // title: ,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
              size: 20,
            )),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 24 / 10,
              child:
                  SvgPicture.asset('asset/svg/undraw_my_password_re_ydq7.svg'),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Reset \nPassword?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: primaryK,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 2, color: terK),
              ),
              child: Row(
                children: [
                  SizedBox(
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.lock_outline,
                          size: 18,
                        )),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "New password",
                      ),
                    ),
                  ),
                  SizedBox(
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 18,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 2, color: terK),
              ),
              child: Row(
                children: [
                  SizedBox(
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.lock_outline,
                          size: 18,
                        )),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm password",
                      ),
                    ),
                  ),
                  SizedBox(
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 18,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
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
                padding: EdgeInsets.symmetric(vertical: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryK, borderRadius: BorderRadius.circular(8)),
                child: Text(
                  textAlign: TextAlign.center,
                  "Reset Password",
                  style: TextStyle(
                    color: backgroundK,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: primaryK,
                    ),
                    color: backgroundK,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  textAlign: TextAlign.center,
                  "Login",
                  style: TextStyle(
                    color: primaryK,
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
