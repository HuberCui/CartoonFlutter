import 'package:flutter/material.dart';
import 'home_page.dart';
import 'group_page.dart';
import 'books_page.dart';
import 'mine_page.dart';

class LRBottomNavigationBar extends StatefulWidget {
  @override
  _LRBottomNavigationBarState createState() => _LRBottomNavigationBarState();
}

class _LRBottomNavigationBarState extends State<LRBottomNavigationBar> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  void _onTapHandler(int index) {
    _currentIndex = index;
    setState(() {
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: Image.asset(
              'assets/images/tab/tab_home@2x.png',
              width: 52,
              height: 52,
            ),
            activeIcon: Image.asset('assets/images/tab/tab_home_S@2x.png',
                width: 52, height: 52),
          ),
          BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset(
                'assets/images/tab/tab_class@2x.png',
                width: 52,
                height: 52,
              ),
              activeIcon: Image.asset(
                'assets/images/tab/tab_class_S@2x.png',
                width: 52,
                height: 52,
              )),
          BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset(
                'assets/images/tab/tab_book@2x.png',
                width: 52,
                height: 52,
              ),
              activeIcon: Image.asset(
                'assets/images/tab/tab_book_S@2x.png',
                width: 52,
                height: 52,
              )),
          BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset(
                'assets/images/tab/tab_mine@2x.png',
                width: 52,
                height: 52,
              ),
              activeIcon: Image.asset(
                'assets/images/tab/tab_mine_S@2x.png',
                width: 52,
                height: 52,
              )),
        ],
      ),
      body: PageView(
        //允许滚动
//          onPageChanged: (int index){
//            _currentIndex = index;
//            setState(() {
//
//            });
//          },
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[HomePage(), GroupPage(), BooksPage(), MinePage()],
      ),
    );
  }
}
