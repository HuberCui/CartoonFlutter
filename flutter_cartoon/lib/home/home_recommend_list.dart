import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttercartoon/home/home_recommend_section.dart';
import 'package:fluttercartoon/home_models/comics.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
import 'package:fluttercartoon/provider_widget.dart';
import 'package:fluttercartoon/providers/bookintro_pro.dart';
import 'package:provider/provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Home_Recommend_List extends StatefulWidget {
  @override
  _Home_Recommend_ListState createState() => _Home_Recommend_ListState();
}

class _Home_Recommend_ListState extends State<Home_Recommend_List>
    with AutomaticKeepAliveClientMixin<Home_Recommend_List> {
  // BookIntro bookIntro;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // EasyLoading.show(status: 'loading...');
    return FlutterEasyLoading(
      child: ProviderWidget<BookIntroPro>(
        model: BookIntroPro(Provider.of<HomeRequest>(context)),
        onReady: (model) {
          //返回BookIntro
          model.getBoutiqueList(true);
        },
        builder: (context, model, child) {
          if (model.loading && model.firstloading) {
            return Center();
          } else {
            return EasyRefresh.custom(
              onRefresh: () async {
                print('下拉刷新');

                // HomeRequest.request_BoutiqueList().then((res){

                //   setState(() {
                //     bookIntro = BookIntro.fromJson(res.data);

                //     print("======== ${bookIntro.galleryItems.first.cover_image}");
                //   });
                // });

                model.getBoutiqueList(false);
              },
              slivers: <Widget>[
                SliverAppBar(
                  actions: <Widget>[
//              _buildAction(),
                  ],
                  title: Text(''),
                  //  backgroundColor: Theme.of(context).accentColor,
                  expandedHeight: 200.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: model.bookIntro.galleryItems.length == null
                        ? Container()
                        : new Swiper(
                            itemBuilder: (BuildContext context, int index) {
                              return new Image.network(
                                model.bookIntro.galleryItems[index].cover_image,
                                fit: BoxFit.fill,
                              );
                            },
                            itemCount:
                                model.bookIntro.galleryItems.length == null
                                    ? 0
                                    : model.bookIntro.galleryItems.length,
                            autoplay: true,
                            pagination: new SwiperPagination(),
                          ),
                  ),
                  floating: true,
                  // snap: snap,
                  // pinned: pinned,
                ),
//          SliverPersistentHeader(
//             pinned: false,//标题栏是否固定
//            delegate: SliverCustomHeaderDelegate(
//              title: '',
//              collapsedHeight: 40,
//              expandedHeight: 300,
//              paddingTop: MediaQuery.of(context).padding.top,
//                fileImageUrl: 'assets/images/mine/mine_bg_for_girl@2x.png'
//            ),
//
//          ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
//             return Text("$index");
                    Comics comics = model.bookIntro.comicLists[index];
                    return HomeSections(comics);
                  },
                      childCount: model.bookIntro.comicLists.length == null
                          ? 0
                          : model.bookIntro.comicLists.length),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
