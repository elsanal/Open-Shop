import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Decorations/text_deco.dart';
import 'package:openshop/MainPages/Details/detail_body.dart';
import 'package:openshop/MainPages/Details/image_slider.dart';
import 'package:openshop/MainPages/Details/more_image.dart';

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
        child: Stack(
          children: [
            Positioned(
              top: 0,left: 0,right: 0,
              bottom: ScreenUtil().setHeight(200),
              child: ListView(children: [
                imageSwiper(5, width, height),
                detailBody(context),
                moreImage(context, 5)
              ],),
            ),
            Positioned(
              bottom: 0,left: 0,right: 0,
                child: Column(children: [
                  _bottomOrder(),
                  // _bottomOrder()
                ],)
            )
          ],
        ),),
    );
  }

  Widget _bottomOrder(){
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(15),
        bottom: ScreenUtil().setHeight(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        _button("Chat now"),
        _button("Add to Cart"),
        _button("Order now")
      ],),
    );
  }

  Widget _button(String label){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
        decoration:const BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.all(Radius.circular(25))
        ),
        child: Text(label,style: style,),),);
  }

}
