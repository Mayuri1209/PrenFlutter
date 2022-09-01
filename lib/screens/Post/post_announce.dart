import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SignupPage> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xffEFFAFE),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("Asset/Image/Pren.png"),
                      height: 100,
                      //width: 500,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 10.0, top: 50.0, bottom: 40.0),
                child: Text(
                  "  Log In \n _________________________",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffF8F8F8),
                // boxShadow: [BoxShadow(offset: Offset(0, 4))]
              ),
              alignment: Alignment.center,
              child: TextField(
                //keyboardType: NumberInputElement,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                  hintText: "Enter 10 Digit Mobile Number",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignupPage(title: "SignIn"))),
              },
              child: Container(
                padding:
                    const EdgeInsetsDirectional.only(start: 60.0, top: 300.0),
                child: Image.asset("Asset/Image/Arrow_login.png"),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.black,
                  //shape: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              padding: const EdgeInsetsDirectional.only(
                  start: 50.0, top: 400.0, bottom: 10.0),
              child: Text(
                " Don't have any acoount? Click Here.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
