import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Decorations/text_deco.dart';
import 'package:openshop/MainPages/Account/settings.dart';

Widget accountHeader(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return SliverAppBar(
  floating: true,
    pinned: false,
    snap: false,
    leading: Container(),
    backgroundColor: Colors.transparent,
    expandedHeight: ScreenUtil().setHeight(650),
    excludeHeaderSemantics: true,

    flexibleSpace: FlexibleSpaceBar(
      background: Card(
        color: Colors.transparent,
        child: Container(
          height: ScreenUtil().setHeight(300),
          width: width,
          decoration:BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/img3.jpeg"),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(ScreenUtil().setWidth(20))
            )
          ),
          child: Stack(
            children:  [
              Positioned(
                top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black87.withOpacity(0.5),
                  ),
              ),
            Positioned(
              top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.settings_rounded),
                  onPressed: ()=>Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const Settings())),)),

            Positioned(
              left: 10,
              top: 0,
              bottom: 0,
              child: CircleAvatar(
                radius: ScreenUtil().setWidth(140),
                backgroundColor: Colors.orange,
                backgroundImage: const AssetImage("assets/img1.jpeg"),

              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: ScreenUtil().setWidth(360),
              width: width-ScreenUtil().setWidth(365),
              child: SizedBox(
                height: ScreenUtil().setHeight(300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("Username : Elpipo", style: style,),
                SizedBox(height: ScreenUtil().setHeight(15),),
                Text("Phone : +57 58 568 69694", style: style,),
                SizedBox(height: ScreenUtil().setHeight(15),),
                Text("email : elpipo@gmail.com", style: style),
                SizedBox(height: ScreenUtil().setHeight(15),),
                Text("location : ouaga pissy avenue Moussa rue 3 porte 543",
                    style: style,
                  maxLines: 4,
                  // overflow: TextOverflow.clip,
                )
              ],),),
            )

          ],),
        ),
      ),
    ),
  );
}
