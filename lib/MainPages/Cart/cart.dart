import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Components/MenuBar/menu_bar.dart';
import 'package:openshop/Components/body.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  int menuIndex = 0;
  final menuItems = ["All","Electronics","Clothes","Shoes","Foods",
    "Electronics","Clothes","Shoes","Foods"];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black87,
      height: height,
      width: width,
      child: Stack(
        children: [
        Positioned(child: menu()),
        Positioned(
          top: ScreenUtil().setHeight(90),
            left: 0,right: 0,bottom: 0,
            child: SizedBox(
                height: height-ScreenUtil().setHeight(380),
                width: width,
                child: Center(child: mainBody(context, 0, "All"))))
        ],
      ),
    );
  }

  Widget menu(){
    final width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.green,
      height: ScreenUtil().setHeight(90),
      width: width,
      padding: EdgeInsets.only(
          left: ScreenUtil().setHeight(20),
          right: ScreenUtil().setHeight(20)
      ),
      child: ListView.builder(
          itemCount: menuItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>Container(
              padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
              child: GestureDetector(
                onTap: (){setState(() {
                  menuIndex = index;
                });},
                child: Text(menuItems[index],
                  style: TextStyle(
                    color: menuIndex==index?Colors.orange:Colors.white,
                    // backgroundColor: menuIndex==index?Colors.white:Colors.black
                  ),),
              ))
      ),
    );
  }

}
