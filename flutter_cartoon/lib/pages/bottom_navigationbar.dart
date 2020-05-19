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

  HomePage home;
  GroupPage group;
  BooksPage books;
  MinePage mine;

  currentPage(){
    switch(_currentIndex){
      case 0:
        if(home == null){
          home = HomePage();
        }
        return home;
        break;
      case 1:
        if(group == null){
          group = GroupPage();
        }
        return group;
        break;
      case 2:
        if(books == null){
          books = BooksPage();
        }
        return books;
        break;
      case 3:
        if(mine == null){
          mine = MinePage();
        }
        return mine;
        break;

    }
  }
  void _onTapHandler(int index){

      setState(() {
        _currentIndex = index;
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
            icon: _currentIndex == 0? Image.asset('assets/images/tab/tab_home_S@2x.png',width: 52,height: 52,) :Image.asset('assets/images/tab/tab_home@2x.png',width: 52,height: 52),

          ),
          BottomNavigationBarItem(
              title: Text(''),
              icon: _currentIndex == 1? Image.asset('assets/images/tab/tab_class_S@2x.png',width: 52,height: 52,) :Image.asset('assets/images/tab/tab_class@2x.png',width: 52,height: 52,)
          ),
          BottomNavigationBarItem(

              title: Text(''),
              icon: _currentIndex == 2? Image.asset('assets/images/tab/tab_book_S@2x.png',width: 52,height: 52,) :Image.asset('assets/images/tab/tab_book@2x.png',width: 52,height: 52,)
          ),
          BottomNavigationBarItem(

              title: Text(''),
              icon: _currentIndex == 3? Image.asset('assets/images/tab/tab_mine_S@2x.png',width: 52,height: 52,) :Image.asset('assets/images/tab/tab_mine@2x.png',width: 52,height: 52,)
          ),
        ],

      ),
      body: currentPage(),
    );
  }
}
