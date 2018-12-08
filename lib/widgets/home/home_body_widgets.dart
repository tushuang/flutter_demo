import 'package:flutter/material.dart';
import './home_list_item_widget.dart';
import '../../models/jobList.dart';

class HomeBodyWidget extends StatelessWidget {
  // 定义参数
  final List<String> items;
  HomeBodyWidget({Key key, @required this.items}) : super(key: key);
  // 定义一个部件 给HomeListItemWidget部件传参 反回listItem
  Widget _itemBuilder (BuildContext context,int index) {
    return new HomeListItemWidget(index: index);
  }

  @override
  Widget build(BuildContext context) {
  // 真正返回的视图
    return new ListView.builder(
      itemCount: lists.length,
      itemBuilder: _itemBuilder
    );
  }
}