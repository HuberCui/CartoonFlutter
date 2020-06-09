import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';
import 'PHheader.dart';
List<SingleChildStatelessWidget> providers = [
  Provider<HomeRequest>(create: (_){
    return HomeRequest();
  }),
  Provider<GroupRequest>(create: (_){
    return GroupRequest();
    })

];