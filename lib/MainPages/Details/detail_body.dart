import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Decorations/text_deco.dart';

Widget detailBody(BuildContext context){
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
    child: Column(children:[
      Card(
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
          width: width,
          child: Text.rich(TextSpan(
            text: "Price : ",
              style: style.copyWith(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(40)),
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
                        "femme et homme.",),

              ])),
        ),
      ),
      Card(
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
          width: width,
          child: Text.rich(TextSpan(
            style: style.copyWith(
                color: Colors.black, 
                fontSize: ScreenUtil().setSp(40)),
          children: const <TextSpan>[
            TextSpan(text: "Address : Ouaga Nossin hippodrome rue 14 porte 342"),
            TextSpan(text: "\nCan deliver to : Nossin, Rimkieta, Wayalghin, Kossodo"),
            TextSpan(text: "\nWork time : 7h - 22h"),
            TextSpan(text: "\nDuration : within 3 days")
          ]
      ),),
        ),),
      Card(
        child: Container(
        padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
        width: width,
        child: Text.rich(TextSpan(
          text: "Characteristics : ",
            style: style.copyWith(
                color: Colors.black,
                fontSize: ScreenUtil().setSp(40)),
            children: const <TextSpan>[
              TextSpan(text: "\n⚬ Different colors"),
              TextSpan(text: "\n⚬ Different sizes"),
              TextSpan(text: "\n⚬ For women and men"),
              TextSpan(text: "\n⚬ Cotton")
            ]
        ),),
      ),),
    ],),
  );
}