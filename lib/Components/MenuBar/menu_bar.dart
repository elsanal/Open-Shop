import 'package:flutter/material.dart';
import 'package:openshop/Components/MenuBar/menu_items.dart';
import 'package:openshop/Components/MenuBar/search.dart';

Widget menuBar(BuildContext context){
  return Wrap(
    direction: Axis.vertical,
    verticalDirection: VerticalDirection.down,
    children: [
      search(context),
      menu(context)
    ],
  );
}