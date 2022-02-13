import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Widget menu(BuildContext context){
//   final items = ["All","Electronics","Clothes","Shoes","Foods","Electronics","Clothes","Shoes","Foods"];
//   final width = MediaQuery.of(context).size.width;
//   return Container(
//     // color: Colors.green,
//     height: ScreenUtil().setHeight(90),
//     width: width,
//     padding: EdgeInsets.only(
//       left: ScreenUtil().setHeight(20),
//       right: ScreenUtil().setHeight(20)
//     ),
//     child: ListView.builder(
//         itemCount: items.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context,index)=>Container(
//             padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
//             child: Text(items[index],style: const TextStyle(
//               color: Colors.white
//             ),))
//     ),
//   );
// }