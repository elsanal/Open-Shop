import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openshop/Components/MenuBar/menu_bar.dart';
import 'package:openshop/Components/body.dart';
import 'package:openshop/Decorations/text_deco.dart';

class MyShop extends StatefulWidget {
  const MyShop({Key? key}) : super(key: key);

  @override
  _MyShopState createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  int menuIndex = 0;
  String _menuItem = "All";
  final _menuItems = ["Posts", "Orders","Waiting","Received"];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [

          Positioned(
            top: 0,left: 0,right: 0,
              child: Container(
                height: height/3.5,
                decoration: const BoxDecoration(
                    color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("assets/img2.jpeg"),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: ScreenUtil().setHeight(50)
                  ),
                  child: Text("La merveille",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: ScreenUtil().setSp(75),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              )),
          Positioned(
              top: 0,
              left: 5,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: ()=>Navigator.pop(context),
                child: Text("Back"),)),
          Positioned(
              top: ScreenUtil().setHeight(250),
              child: Container(
                  decoration:BoxDecoration(
                      color: Colors.brown.withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                      )
                  ),
                  child: _menu(height))),
          Positioned(
              top: ScreenUtil().setHeight(500),
              bottom: 0,
              child: Container(
                 height: height*(2/3),
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    )
                  ),
                  child: Center(child: mainBody(context, 0, "post")))),
        ],),
        floatingActionButton: _addButton(),
      ),
    );
  }


  Widget _menu(double height){
    final width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.green,
      height: height/7,
      width: width,
      padding: EdgeInsets.only(
          left: ScreenUtil().setHeight(10),
          right: ScreenUtil().setHeight(10)
      ),
      child: MasonryGridView.builder(
          itemCount: 4,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context,index)=>Container(
              padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
              child: GestureDetector(
                onTap: (){setState(() {
                  menuIndex = index;
                  _menuItem = _menuItems[index];
                });},
                child: _icon(_menuItems[index], index, 351561)
              )
          )
      ),
    );
  }

  Widget _icon(String label, int index, int length){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: ScreenUtil().setWidth(80),
          backgroundColor: Colors.black,
          child: Text(label,
            style: style.copyWith(
                color: menuIndex==index?Colors.orange:Colors.white,
                fontSize: 13),),
        ),
        const SizedBox(height: 5,),
        Text("$length",
          style: TextStyle(
            color: menuIndex==index?Colors.orange:Colors.white,
            // backgroundColor: Colors.black
          ),),
      ],
    );
  }

  Widget _addButton(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            onPressed: (){},
          tooltip: "Add new post",
          heroTag: null,
          backgroundColor: Colors.black,
          child: Icon(Icons.library_add_rounded,
            size: ScreenUtil().setWidth(100),),
        ),
        const SizedBox(height: 20,),
        FloatingActionButton(
          onPressed: (){},
          tooltip: "Add short video",
          heroTag: null,
          backgroundColor: Colors.black,
          child: const Icon(Icons.video_library_rounded,
            size: 40,),
        ),
        const SizedBox(height: 50,),
      ],
    );
  }

}
