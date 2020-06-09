import 'package:flutter/material.dart';
import 'package:fluttercartoon/cate_models/CateListModel.dart';
import 'package:fluttercartoon/pages/sort_page.dart';
import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/providers/bookgroup_pro.dart';
import 'package:fluttercartoon/providers/bookintro_pro.dart';
import 'package:provider/provider.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('')),
        body: Container(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8.0, top: 15, bottom: 5, right: 8),
            child: ProviderWidget<BookgroupPro>(
              model: BookgroupPro(Provider.of<GroupRequest>(context)),
              onReady: (model) {
                model.getBookGroup(true);
              },
              builder: (context, models, child) {
                if (models.firstloading && models.loading) {
                   
                  return Container();
                } else {
                  return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1.0),
                          itemCount: models.cateList.length,
                      itemBuilder: (context, index) {
                        CateListModel model = models.cateList[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return SortPage(model);
                            })).then((value) => print(value));
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                      child: Image.network(
                                    model.cover,
                                    fit: BoxFit.fitWidth,
                                  )),
                                  flex: 5,
                                ),
                                Expanded(
                                  child:
                                      Center(child: Text('${model.sortName}')),
                                  flex: 2,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.black12,
                                  width: 0.5,
                                  style: BorderStyle.solid),
                            ),
                          ),
                        );
                      });
                }
              },
            ),
          ),
        ));
  }
}
