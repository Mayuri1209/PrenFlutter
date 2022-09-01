import 'package:flutter/material.dart';
import 'package:preneurup/screens/Post/navigation.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Inter"),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFEFCFF),
            title: Text(
              "Home",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                child: Text(
                  "Feed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Q&A",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
          ),
          body: ListView.builder(
              itemCount: 10, itemBuilder: (context, index) => CardItem()),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      color: Color(0xFFEFF6FC),
      child: Container(
        height: 350.0,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                foregroundImage: AssetImage("Asset/Image/img1.png"),
              ),
              title: Text("Kunal Singh"),
              subtitle: Text("Projct Manager | Investors \n 2 Hrs"),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "http://help.tradestation.com/10_00/eng/tradestationhelp/image/candlestick_chart.png"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.blueGrey,
                ),
                // color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.arrow_upward),
                    SizedBox(width: 8.0),
                    Text("Raise"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.comment),
                    SizedBox(width: 8.0),
                    Text("Comment"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.share),
                    SizedBox(width: 8.0),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.menu, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text("o"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }
}
