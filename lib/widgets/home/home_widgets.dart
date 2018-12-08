import 'package:flutter/material.dart';
import './home_body_widgets.dart';
import '../userHeader/userHeader.dart';
import './home_bottom_wedget.dart';

class HomeWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
     return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(    // app顶部导航
            title: Text('get job'),
            actions: <Widget>[  // 右边的图标
              IconButton(
                icon: Icon(Icons.playlist_play),
                tooltip: 'Air it',
                onPressed:(){print('111');},
              ),
              IconButton(
                icon: Icon(Icons.playlist_add),
                tooltip: 'Restitch it',
                onPressed:(){print('222');},
              ),
            ],
            bottom: TabBar(   // appbar下面的tab
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_activity)
                ),
                Tab(
                  icon: Icon(Icons.local_airport)
                ),
                Tab(
                  icon: Icon(Icons.local_atm)
                )
              ],
            ),
            // leading:  Icon(Icons.menu)  // 左边的图标
          ),
          drawer: new Drawer( // 加上抽屉后自动加上leading
            child: UserHeader()
          ),
          // body: HomeBodyWidget(),
          bottomNavigationBar: BottomNavigationBarWedget(), // 底部导航
          body: TabBarView(
            children: <Widget>[  // 点击appbar下面的tab时 切换的页面
              HomeBodyWidget(),
              Icon(Icons.local_airport),
              Icon(Icons.local_atm)
            ],
          ),
        ),
     );
    }
}
