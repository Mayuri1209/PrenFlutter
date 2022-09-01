import 'package:flutter/material.dart';
import 'package:preneurup/home.dart';
import 'package:preneurup/screens/Auth/choice.dart';
import 'package:preneurup/screens/Post/postMenu.dart';
import 'package:preneurup/screens/home_screen/home_qa.dart';
import '../home_screen/home_screen.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dar';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<NavigationMenu> createState() => _NavigationMenu();
}

class _NavigationMenu extends State<NavigationMenu> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    PostMenu(title: "Post"),
    MyHomePage(title: 'Home'),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 80,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HomeScreen();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                      child: Image.asset("Asset/icons/home.png",
                          color: currentTab == 0
                              ? Color(0xff263B7E)
                              : Colors.blueGrey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = ChoicePage(title: 'choise');
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      child: Image.asset("Asset/icons/community.png",
                          color: currentTab == 1
                              ? (Color(0xff263B7E))
                              : Colors.blueGrey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = PostMenu(title: "Post");
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                      child: Image.asset("Asset/icons/add.png",
                          color: currentTab == 2
                              ? Color(0xff263B7E)
                              : Colors.blueGrey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HomeScreen();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                      child: Image.asset("Asset/icons/global-network.png",
                          color: currentTab == 3
                              ? Color(0xff263B7E)
                              : Colors.blueGrey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = PostMenu(title: 'post');
                    currentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      child: Image.asset("Asset/icons/profile.png",
                          color: currentTab == 4
                              ? Color(0xff000000)
                              : Colors.blueGrey),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
