import 'package:flutter/material.dart';
import 'package:sns_demo/dummy/data.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => new _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: TextFormField(
            decoration: const InputDecoration(
              fillColor: Colors.green,
              labelText: '🔍　検索',
            ),
          )),
      body: ListView(
        children: List.generate(users.length, (index) {
          return _searchList(index);
        }),
      ),
    );
  }

  Widget _searchList(int index) {
    return Column(
      children: <Widget>[
        Divider(
          height: 8.0,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage:
                AssetImage("assets/images/user/" + users[index]['id'] + ".png"),
          ),
          title: Text(
            users[index]['name'] + "さん",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("id: " + users[index]['id']),
        ),
      ],
    );
  }
}
