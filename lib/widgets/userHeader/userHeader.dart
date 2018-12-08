import 'package:flutter/material.dart';

class UserHeader extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _MyUserHeadState();
  }
}

class _MyUserHeadState extends State<UserHeader> {
  @override
    Widget build(BuildContext context) {
      Widget UserHeader = UserAccountsDrawerHeader(
        accountName: new Text('Tom'),
        accountEmail: new Text('tom@xxx.com'),
        currentAccountPicture: new CircleAvatar(
          // 因为是网络请求的图片 所以是NetworkImage
        backgroundImage: NetworkImage('http://120.78.201.44/static/headericon.jpg')),
        decoration: BoxDecoration(  // 设置背景图
          image: DecorationImage(
            image: NetworkImage('http://120.78.201.44/static/cat.jpg'),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(  // 加滤镜
            //   Colors.yellow[400].withOpacity(0.6),
            //   BlendMode.hardLight
            // )
          )
        ),
      );

    return ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserHeader , // 可在这里替换自定义的header
            ListTile(
              title: Text('activity', textAlign: TextAlign.right),
              trailing: Icon(Icons.local_activity),
              onTap: () { Navigator.pop(context); }
            ),
            ListTile(
              title: Text('airport', textAlign: TextAlign.right),
              trailing: Icon(Icons.local_airport),
              onTap: () { Navigator.pop(context); }
            ),
            ListTile(
              title: Text('ATM', textAlign: TextAlign.right),
              trailing: Icon(Icons.local_atm),
              onTap: () { Navigator.pop(context); }
            )
          ],
        );
  }
}