import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas12/model/Chart_model.dart';
import 'package:sanberappflutter/tugas/tugas12/pages/drawer_screen.dart';
import 'package:sanberappflutter/tugas/tugas12/common/theme12.dart';

class Telegram extends StatefulWidget {
  static const routeName = '/telegram_pages';
  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Telegram'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(items[index].profileUrl),
                radius: 28,
              ),
              title: Text(
                items[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                items[index].message,
                style: TextStyle(color: greyColor),
              ),
              trailing: Text(
                items[index].time,
                style: TextStyle(fontSize: 13, color: darkGrey),
              ),
              onTap: () {},
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: items.length),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.create,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff65a9e0),
        onPressed: () {},
      ),
    );
  }
}
