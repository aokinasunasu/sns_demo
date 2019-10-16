import 'package:flutter/material.dart';
import 'package:sns_demo/dummy/data.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => new _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("アカウント"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text(login_user['name']),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/user/" + login_user['id'] + ".png"),
                ),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("プロフィール設定"),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("アカウント設定"),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("プライバシーポリシー"),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("ご利用規約"),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}
