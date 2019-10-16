import 'package:flutter/material.dart';
import 'package:sns_demo/dummy/data.dart';

class ActivityList extends StatefulWidget {
  @override
  _ActivityListState createState() => new _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("アクティビティ"),
      ),
      body: ListView(
        children: List.generate(users.length, (index) {
          return _activityhList(index);
        }),
      ),
    );
  }

  Widget _activityhList(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/user/" + users[index]['id'] + ".png",
          ),
        ),
        title: Text(
          "" + users[index]['id'] + 'がフォローしました',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("5時間前"),
      ),
    );
  }
}
