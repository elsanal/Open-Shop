import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:openshop/Components/ProductView/product_card_view.dart';
import 'package:openshop/MainPages/Account/account.dart';
import 'package:openshop/MainPages/Cart/cart.dart';
import 'package:openshop/MainPages/Chat/chat.dart';
import 'package:openshop/MainPages/Trend/trending.dart';

Widget mainBody(BuildContext context, int index, String menuItem){
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  List<Widget> pages = [const Cart(),const Trending(),const Chat(),const Account(),const Account(),const Account()];
  return Container(
    color: Colors.black87,
    height: height - ScreenUtil().setHeight(600),
    width: width,
    child: pages[index],
    // child: MasonryGridView.builder(
    //   itemCount: index+1,
    //   gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2),
    //   itemBuilder: (context, index)=>productCardView(index),)
  );
}
