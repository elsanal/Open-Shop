import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Components/MenuBar/search.dart';
import 'package:openshop/Decorations/text_deco.dart';


class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Stack(
        children: [
          Positioned(
              top: 0,left: 0,right: 0,
              child: Container(
                  color: Colors.black,
                  child: search(context))),
          Positioned(
              top: ScreenUtil().setHeight(180),
              left: 0,
              right: 0,
              child: _msgTile(10)),
        ],
      ),
    );
  }

  Widget _msgTile(int length){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: length,
      itemBuilder:(context, index){
        return Container(
          color: Colors.black,
          margin: EdgeInsets.only(
            bottom: ScreenUtil().setHeight(20),
            left: ScreenUtil().setHeight(10),
            right: ScreenUtil().setHeight(10),
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: ScreenUtil().setWidth(80),
              backgroundImage: const AssetImage('assets/img2.jpeg'),
            ),
            title: Text("Elsone",style: style,),
            subtitle: Text("J'ai reçu",style: style,),
            trailing: Text("14:34",style: style,),
          ),
        );
      },
    );
  }


}
