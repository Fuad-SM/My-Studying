import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sanberappflutter/tugas/tugas12/common/theme12.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('Fuad Syafa\'at Muharram'),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg')),
              accountEmail: Text(
                '+62 813 53901717',
                style:
                    TextStyle(color: numberColor, fontWeight: FontWeight.w300),
              )),
          DrawerListTile(
              iconData: Icons.group, title: 'New Group', onTilePressed: () {}),
          SizedBox(
            height: 4,
          ),
          DrawerListTile(
              iconData: Icons.person_outline,
              title: 'Contacts',
              onTilePressed: () {}),
          SizedBox(
            height: 4,
          ),
          DrawerListTile(
              iconData: Icons.call, title: 'Calls', onTilePressed: () {}),
          SizedBox(
            height: 4,
          ),
          DrawerListTile(
              iconData: Icons.bookmark_border,
              title: 'Saved Message',
              onTilePressed: () {}),
          SizedBox(
            height: 4,
          ),
          DrawerListTile(
              iconData: Icons.settings,
              title: 'Settings',
              onTilePressed: () {}),
          Divider(
            color: Colors.grey.shade300,
            height: 20,
            thickness: 1,
            // indent: 5,
            // endIndent: 5,
          ),
          DrawerListTile(
              iconData: Icons.person_add,
              title: 'Invite Friends',
              onTilePressed: () {}),
          SizedBox(
            height: 4,
          ),
          DrawerListTile(
              iconData: Icons.help_outline,
              title: 'Telegram Features',
              onTilePressed: () {})
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile(
      {required this.iconData,
      required this.title,
      required this.onTilePressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTilePressed,
        dense: true,
        leading: Icon(iconData),
        title: Text(
          title,
          style: TextStyle(fontSize: 15, color: fontColor),
        ));
  }
}
