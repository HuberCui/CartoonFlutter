import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
import 'package:fluttercartoon/tools/extension_color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttercartoon/pages/book_intro_page.dart';

class SearchPage extends SearchDelegate<String> {
  @override
  // TODO: implement searchFieldLabel
  String get searchFieldLabel => "请输入漫画名称/作者";
  @override
  // TODO: implement textInputAction
  TextInputAction get textInputAction => TextInputAction.done;
  // 搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。 当点击图片时，清空搜索的内容
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      FlatButton(
          onPressed: () {
            query = "";
          },
          child: Text(
            '取消',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ))
    ];
  }

  // 搜索栏左侧的图标和功能，点击时关闭整个搜索页面
  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, '');
      },
    );
  }

  // 搜索到内容了
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      child: Center(
        child: Text("搜索的结果：$query"),
      ),
    );
  }

  // 输入时的推荐及搜索结果
  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.length > 0) {
      return FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot snapShot) {
            print('state:${snapShot.connectionState}');
            List list = List();
            switch (snapShot.connectionState) {
              case ConnectionState.none:
                print('还没有开始网络请求');
                return Text('还没有开始网络请求');
              case ConnectionState.active:
                print('active');
                return Text('ConnectionState.active');
              case ConnectionState.waiting:
                print('waiting');
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                print('done');
                print('data:${snapShot.data.data}');
                list.addAll(snapShot.data.data);
                return ListView.separated(
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          print('##########################');

                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return BookIntroPage(
                                int.parse(list[index]['comic_id']));
                          }));

                          SharedPreferences.getInstance()
                              .then((SharedPreferences prefs) {
                            List<String> historylist =
                                (prefs.getStringList('searchList'));
                            print('list*****${historylist}');
                            if (historylist == null) {
                              historylist = List();
                              historylist.add(query);
                            } else {
                              bool equel = false;
                              for (String item in historylist) {
                                if (item == query) {
                                  equel = true;
                                }
                              }
                              if (!equel) {
                                historylist.add(query);
                              }
                            }

                            prefs
                                .setStringList('searchList', historylist)
                                .then((_) {});
                          });
                        },
                        child: Container(
                          height: 40,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Center(child: Text(list[index]["name"]))),
                        ),
                      );
                    },
                    separatorBuilder: (context, int index) {
                      return Divider(
                        height: 0.5,
                        color: Colors.black26,
                        indent: 20,
                      );
                    },
                    itemCount: list.length);
              default:
                return Container();
            }

            return Container();
          },
          future: HomeRequest().request_Search(query));
    } else {
      return initView();
    }
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: Colors.green,
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.white),
      primaryColorBrightness: Brightness.light,
      primaryTextTheme: theme.textTheme,
    );
  }
}

class initView extends StatefulWidget {
  initView({Key key}) : super(key: key);
  @override
  _initViewState createState() => _initViewState();
}

class _initViewState extends State<initView> {
  List hotList = List();
  List historyList = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences prefs) {
      List<String> ll = prefs.getStringList('searchList');

      print('historylsit==${ll}');
      if (ll != null) {
        historyList.addAll(ll);
      }
      return HomeRequest().request_Hot();
    }).then((res) {
      print(res.data);
      hotList.addAll(res.data['hotItems']);

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print('===========');
    return SingleChildScrollView(
      child: Container(
          child: Column(children: <Widget>[
        headerItem('历史搜索', icon: Icon(Icons.delete,color: Colors.black26,), function: () {
          SharedPreferences.getInstance().then((SharedPreferences prefs) {
            prefs.remove('searchList').then((_) {
              setState(() {});
            });
          });
        }),
        ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: historyList.length > 0
                  ? Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(historyList[index]))
                  : Container(),
              onTap: () {},
            );
          },
          separatorBuilder: (context, int index) {
            return Divider(
              height: 0.5,
              color: Colors.black26,
              indent: 20,
            );
          },
          itemCount: historyList.length,
          shrinkWrap: true,
        ),
        headerItem('热门搜索', icon: Icon(Icons.refresh,color: Colors.black26), function: () {}),
        Wrap(children: <Widget>[for (Map map in hotList) TagItem(map)]),
      ])),
    );
  }

  Widget headerItem(String title, {Icon icon, Function function}) {
    return Container(
      height: 40,
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.black26),
            ),
          ),
          IconButton(icon: icon, onPressed: function)
        ],
      ),
    );
  }
}

class TagItem extends StatelessWidget {
  final Map map;

  TagItem(this.map);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return BookIntroPage(int.parse(map['comic_id']));
          }));
        },
        child: Container(
          margin: EdgeInsets.all(8),
          child: Text(
            map['name'],
            style: TextStyle(color: HexColor.fromHex(map['bgColor'])),
          ),
        ),
      ),
    );
  }
}
