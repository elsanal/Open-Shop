import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/MainPages/Details/detail.dart';

Widget productCardView(BuildContext context,int index){
  return Card(
    color: Colors.transparent,
    child: GestureDetector(
      onTap: ()=>Navigator.push(context,
          MaterialPageRoute(builder: (context)=>const Detail())),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ClipRRect(
          child: Image.asset(
              'assets/img${1+index}.jpeg',
            fit: BoxFit.fill,
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(5)
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5)
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(5),),
              Container(
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(8),),
                  child: const Text("Jolie habit pour bebe. tous les tailles existent."
                      "Jolie habit pour bebe. tous les tailles existent.",
                    style: TextStyle(

                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )
              ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              Container(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(8),
                  right: ScreenUtil().setWidth(8),),
                child: const Text.rich(TextSpan(
                    text: "Price : ",
                    style: TextStyle(fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$8.99',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      TextSpan(
                          text: '  \$3.99',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ])
                ),),
              SizedBox(height: ScreenUtil().setHeight(5),),
            ],
          ),
        ),

      ],),
    ),
  );
}