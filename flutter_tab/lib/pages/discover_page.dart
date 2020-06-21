import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget{
  @override
  _DiscoverPageState createState() {
    return _DiscoverPageState();
  }

}

class _DiscoverPageState extends State<DiscoverPage>{
  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Text('发现'),
        )
    );
  }
}