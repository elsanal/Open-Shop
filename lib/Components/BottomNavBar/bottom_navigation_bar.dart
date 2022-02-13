import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget bottomIcon(IconData myIcon,String label, int index, int state){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        myIcon,
        color: index == state?Colors.orange:Colors.white,
        size: index == state?ScreenUtil().setHeight(90):ScreenUtil().setHeight(80),
      ),
      Text(
        label,
        style: TextStyle(
            color: index == state?Colors.orange:Colors.white,
            fontSize: index == state?ScreenUtil().setSp(38):ScreenUtil().setSp(35)
        ),
      )
    ],
  );
}

Widget bottomLabel(String label, bool active){
  return Text(
    label,
    style: TextStyle(
        color: Colors.white,
      fontSize: ScreenUtil().setSp(38)
    ),
  );
}

class BottomBarClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw/3, 0, sw/2, 2*sh/5, sw/2, 2*sh/5);
    path.cubicTo(3*sw/3, 2*sh/5, 3*sw/3, 0, 4*sw/3,0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();

   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}