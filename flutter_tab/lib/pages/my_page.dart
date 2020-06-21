import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget{
  @override
  _MyPageState createState() {
    return _MyPageState();
  }

}

class _MyPageState extends State<MyPage>{
  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Text('我的'),
        )
    );
  }
}