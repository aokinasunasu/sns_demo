import 'package:flutter/material.dart';
import 'package:sns_demo/view/account.dart';
import 'package:sns_demo/view/home.dart';
import 'package:sns_demo/view/search.dart';
import 'package:sns_demo/view/activity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final noteColor = const Color(0xFF27AD8B);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  List tabLayout = [Home(), Search(), ActivityList(), Account()];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: tabLayout[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onTapBottomTab,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.home),
              title: new Text('ホーム'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.search),
              title: new Text('さがす'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              title: Text('アクティビティ'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              title: Text('アカウント'),
            ),
          ]),
    );
  }

  _onTapBottomTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
