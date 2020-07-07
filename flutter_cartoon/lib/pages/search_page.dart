import 'package:flutter/material.dart';

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
    return [FlatButton(onPressed: (){
         query = "";
    }, child: Text('取消'))];
  }

  // 搜索栏左侧的图标和功能，点击时关闭整个搜索页面
  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: (){
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
return initView();
    print('============');
    final suggestionList = query.isEmpty ? recentList : searchList.where((
        input) => input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        // 创建一个富文本，匹配的内容特别显示
        return ListTile(title: RichText(text: TextSpan(
          text: suggestionList[index].substring(0, query.length),
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey)
            )
          ],)),
          onTap: (){
            query = suggestionList[index];
            Scaffold.of(context).showSnackBar(SnackBar(content: Text(query)));
          },
        );
      },
    );
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
  @override
  _initViewState createState() => _initViewState();
}

class _initViewState extends State<initView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          headerItem('历史搜索',icon: Icon(Icons.delete),function: (){

          }),
          ListView.builder(itemBuilder: (context,index){
            Text('$index');
          },itemCount: 4,),
          headerItem('热门搜索',icon: Icon(Icons.refresh),function: (){

          }),
          Wrap(children: <Widget>[
            for (String item in tags) TagItem(item)
          ]),
        ],
      ),
    );
  }


  Widget headerItem(String title,{Icon icon,Function function}){
    return Container(
      height: 50,
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title,style: TextStyle(color: Colors.black26),),
          IconButton(icon: icon, onPressed: function)
        ],
      ),
    );
  }
}

class TagItem extends StatelessWidget {
  final String text;

  TagItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          border:  Border.all(color: Colors.blueAccent.withAlpha(60), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}
const List<String> tags = [
  "肯德基",
  "小哥哥你的东西掉了",
  "小姐姐好漂亮啊",
  "这个东西是啥",
  "哈哈哈",
  "好困啊",
  "今天好运",
  "明天好运来",
  "今年快结束了",
  "我累啊",
  "你写的什么代码",
  "多多多"
];
const searchList = [
  "a搜索结果数据1-aa",
  "b搜索结果数据2-bb",
  "c搜索结果数据3-cc",
  "c搜索结果数据4-dd",
  "e搜索结果数据5-ee",
  "f搜索结果数据6-ff",
  "f搜索结果数据7-gg",
  "f搜索结果数据8-hh"
];

const recentList = [
  "推荐结果1-ii",
  "推荐结果2-jj",
  "推荐结果3-kk",
  "推荐结果4-ll",
  "推荐结果5-mm",
  "推荐结果6-nn",
  "推荐结果7-oo",
  "推荐结果8-pp",
];



