import 'package:flutter/material.dart';

import 'package:preneurup/screens/Auth/loginPage.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ChoicePage> createState() => _ChoicePage();
}

class _ChoicePage extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return initwidget();
  }

  Widget initwidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Padding(padding: EdgeInsets.only(left: 20, right: 20, bottom: 50)),
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
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFEFCFF),
              ),
              padding: const EdgeInsetsDirectional.only(
                  start: 40, end: 40, top: 30, bottom: 40.0),
              child: Text(
                "Welcome to the entrepreneurial community, where you may find collaborators to help you put your ideas into action or help out with other people's projects. Be a part of us.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => LoginPage(title: "Login"))),
                // MaterialPageRoute(builder: (context) => ChoicePage(title: "choice")));
                /* write code*/
                //Welcome to the entrepreneurial community, where you may find collaborators to help you put your ideas into action or help out with other people's projects. Be a part of us.
              },
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                alignment: Alignment.center,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffEFFAFE),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xff000000),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xFFE4F3F8))
                    ]),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 60),
              alignment: Alignment.center,
              child: const Text(
                "--------------- or --------------",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                /* write code*/
              },
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                alignment: Alignment.center,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffEFFAFE),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xff000000),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xFFE4F3F8))
                    ]),
                child: Text(
                  "Create an Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
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
