import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget moreImage(BuildContext context, int length){
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: height*length*(1/2),
    width: width,
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: length,
        itemBuilder: (context, index)=>Container(
          padding: EdgeInsets.all(ScreenUtil().setHeight(10)),
          child: Card(
            child: Container(
              margin: EdgeInsets.all(ScreenUtil().setHeight(10)),
              child: Image.asset(
                  "assets/img${index+1}.jpeg",
                fit: BoxFit.contain,
              ),
            ),
          ),
        )
    ),
  );
}