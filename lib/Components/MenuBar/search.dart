import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Decorations/deco_search_bar.dart';

Widget search(BuildContext context){
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
    child: TextFormField(
     decoration: formFieldDeco,
  ),);
}