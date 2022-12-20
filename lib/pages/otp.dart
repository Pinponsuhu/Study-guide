import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/reset_password.dart';

class OTPScreen extends StatefulWidget {
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  int timeLeft = 60;

  void resendTime() {
    Timer.periodic(Duration(seconds: 60), (timer) {
      if (timeLeft > 0) {
        setState(() {
          print(timeLeft);
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

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
              child: SvgPicture.asset('asset/svg/undraw_mailbox_re_dvds.svg'),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Enter Reset PIN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: primaryK,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "A 4 digit code has been sent to your email address",
              style: TextStyle(
                fontSize: 18,
                color: terK,
                height: 1.2,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _PinField(first: true, last: false, context: context),
                  _PinField(first: false, last: false, context: context),
                  _PinField(first: false, last: false, context: context),
                  _PinField(first: false, last: true, context: context),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()));
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
                  "Verify PIN",
                  style: TextStyle(
                    color: backgroundK,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "I didn't get a code",
                  style: TextStyle(
                    fontSize: 18,
                    color: terK,
                    height: 1.2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: null,
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: primaryK,
                        height: 1.2,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

_PinField({bool? first, bool? last, BuildContext? context}) {
  return Container(
    height: 75,
    child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context!).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context!).previousFocus();
            }
            // if(){}
          },
          autofocus: true,
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.black12,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: primaryK,
                )),
          ),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
  );
}
