import 'package:flutter/material.dart';
import 'package:openshop/MainPages/Details/detail_body.dart';
import 'package:openshop/MainPages/Details/image_slider.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: ListView(children: [
          imageSwiper(5, width, height),
          detailBody()
        ],),),
    );
  }
}
