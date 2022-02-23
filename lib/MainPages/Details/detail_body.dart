import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Decorations/text_deco.dart';

Widget detailBody(){
  return Container(
    padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
    child: Column(children:[
      Text.rich(TextSpan(
          text: "Price : ",
          spellOut: true,
          style: const TextStyle(
              fontWeight: FontWeight.w400
          ),
          children: <TextSpan>[
            TextSpan(
              text: '\$8.99',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const TextSpan(
                text: '  \$3.99',
                style: TextStyle(color: Colors.red,)
            ),
            const TextSpan(text: '\nRate: ',),
            const TextSpan(
                text: '★★★☆☆',
                style: TextStyle(color: Colors.amber)),
            const TextSpan(text: '\nSold : 943832',),
            const TextSpan(
                text: "\nune tres bonne chaussures. C'est la vraie qualitée. "
                    "il ya differentes tailles pour enfants et adultes, "
                    "femme et homme. une tres bonne chaussures. C'est la vraie qualitée. "
                    "il ya differentes tailles pour enfants et adultes, "
                    "femme et homme.",)
          ])),
    ],),
  );
}