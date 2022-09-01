import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:ui' show lerpDouble;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}
//never a better time than no to start.

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xffEFFAFE),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("Asset/Image/pren.png"),
                      height: 100,
                      //width: 500,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 10.0, top: 50.0, bottom: 40.0),
                child: Text(
                  "  Log In  \n_______________________",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              child: Form(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsetsDirectional.only(start: 10.0)),
                    SizedBox(
                      height: 65,
                      width: 250,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 10) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "00000 00000",
                          // border: InputBorder.none,
                          prefixIcon: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    return showCountryPicker(
                                      context: context,
                                      showPhoneCode: true,
                                      countryListTheme: CountryListThemeData(
                                        borderRadius: BorderRadius.zero,
                                        flagSize: 20,
                                        inputDecoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 22.0),
                                          labelText: 'Search',
                                          hintText: 'India',
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.0,
                                          ),
                                          labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                // color: (model.formKey.currentState!
                                                //             .validate() !=
                                                //         true)
                                                //     ? Colors.black
                                                //     :
                                                color: Colors.red.shade500,
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade200,
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          floatingLabelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.5),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      onSelect: (Country value) {
                                        print(
                                            'Select country: ${value.displayName}');
                                      },
                                      // optional. Shows phone code before the country name.
                                      // onSelect: model.onCountrySelected,
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                        ),
                                        child: Text(" +1 "),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        maxLines: 1,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 250, bottom: 20),
              child: SizedBox(
                width: 70,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFEFF6FC),
                    elevation: 15,
                    shape: CircleBorder(
                      //borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.black, width: 4),
                    ),
                    shadowColor: Color.fromARGB(255, 32, 34, 43),
                  ),
                  child: Image.asset(
                    "Asset/Image/Arrow_log.png",
                    color: Colors.black87,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsetsDirectional.only(
                  start: 50.0, bottom: 10.0, top: 100),
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
      backgroundColor: Color(0xffFFFFFF),
    );
  }
}
