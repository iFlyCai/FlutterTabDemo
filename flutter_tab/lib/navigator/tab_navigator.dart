import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertab/pages/home_page.dart';
import 'package:fluttertab/pages/my_page.dart';
import 'package:fluttertab/pages/discover_page.dart';
import 'package:fluttertab/pages/search_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() {
    return _TabNavigatorState();
  }
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defalutColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          DiscoverPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,//当前选中的是哪一个
          onTap: (index){
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _defalutColor,
          ),
          activeIcon: Icon(
            Icons.home,
            color: _activeColor,),
        title: Text('首页',style: TextStyle(
          color: _currentIndex != 0?_defalutColor:_activeColor
        ),)
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _defalutColor,
            ),
            activeIcon: Icon(
              Icons.search,
              color: _activeColor,),
            title: Text('搜索',style: TextStyle(
                color: _currentIndex != 1?_defalutColor:_activeColor
            ),)
        ),BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt,
              color: _defalutColor,
            ),
            activeIcon: Icon(
              Icons.camera_alt,
              color: _activeColor,),
            title: Text('发现',style: TextStyle(
                color: _currentIndex != 2?_defalutColor:_activeColor
            ),)
        ),BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: _defalutColor,
            ),
            activeIcon: Icon(
              Icons.account_circle,
              color: _activeColor,),
            title: Text('我的',style: TextStyle(
                color: _currentIndex != 3?_defalutColor:_activeColor
            ),)
        ),
      ]),
    );
  }
}
