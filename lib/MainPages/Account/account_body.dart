import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/MainPages/Account/MyShop/my_shop.dart';

Widget accountBody(BuildContext context){
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return SliverToBoxAdapter(
    child: GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      children: [
        GestureDetector(
          onTap: ()=>Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const MyShop())),
            child: accountItemCard(0, "My shop",width)),
        accountItemCard(1, "Mon panier",width),
        accountItemCard(2, "Mes achats",width),
        accountItemCard(3, "History",width),
    ],),
  );
}

Widget accountItemCard(int index, String tittle, double width){
  return Card(
    color: Colors.white,
    child: Stack(
      children: [
        Positioned(
          bottom: 0,right: 0,left: 0,top: 0,
          child: Image.asset(
            'assets/img${1+index}.jpeg',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
            color: Colors.black87.withOpacity(0.5),
          ),
        ),
        Center(child: Text(tittle, style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),)
      ],
    ),
  );
}