import 'package:flutter/material.dart';

class LRBottomNavigationBar extends StatefulWidget {
  @override
  _LRBottomNavigationBarState createState() => _LRBottomNavigationBarState();
}

class _LRBottomNavigationBarState extends State<LRBottomNavigationBar> {
  int _currentIndex = 0;

  void _onTapHandler(int index){

      _currentIndex = index;

  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          title: Text('首页',style: TextStyle(color: _currentIndex == 0? Colors.green :Colors.black54)),
          icon: _currentIndex == 0? Image.asset('images/tab/tab_home@2x.png') :Image.asset('images/tab/tab_home_S@2x.png')
        ),
        BottomNavigationBarItem(
            title: Text('分类',style: TextStyle(color: _currentIndex == 0? Colors.green :Colors.black54)),
            icon: _currentIndex == 0? Image.asset('images/tab/tab_class@2x.png') :Image.asset('images/tab/tab_class_S@2x.png')
        ),
        BottomNavigationBarItem(
            title: Text('书架',style: TextStyle(color: _currentIndex == 0? Colors.green :Colors.black54)),
            icon: _currentIndex == 0? Image.asset('images/tab/tab_book@2x.png') :Image.asset('images/tab/tab_book_S@2x.png')
        ),
        BottomNavigationBarItem(
            title: Text('我的',style: TextStyle(color: _currentIndex == 0? Colors.green :Colors.black54)),
            icon: _currentIndex == 0? Image.asset('images/tab/tab_mine@2x.png') :Image.asset('images/tab/tab_mine_S@2x.png')
        ),
      ],
    );
  }
}
