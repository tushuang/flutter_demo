import 'package:flutter/material.dart';
import './widgets/home/home_widgets.dart';
import './configs/colors.dart';

void main() => runApp(
  new MyApp()
);

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor:baseColor
        ),
        home: HomeWidget(),
      );
    }
}