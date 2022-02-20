import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:openshop/Components/ProductView/product_card_view.dart';


Widget mainBody(BuildContext context, int index, String menuItem){
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    color: Colors.black87,
    height: height,
    width: width,
    child: MasonryGridView.builder(
      itemCount: index+5,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (context, index)=>productCardView(index),)
  );
}
