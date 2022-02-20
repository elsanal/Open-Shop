import 'package:flutter/material.dart' ;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Components/BottomNavBar/bottom_navigation_bar.dart';
import 'package:openshop/Components/MenuBar/menu_bar.dart';
import 'package:openshop/Components/MenuBar/menu_items.dart';
import 'package:openshop/Components/MenuBar/search.dart';
import 'package:openshop/MainPages/Account/account.dart';
import 'package:openshop/MainPages/Cart/cart.dart';
import 'package:openshop/MainPages/Chat/chat.dart';
import 'package:openshop/Components/body.dart';
import 'package:openshop/MainPages/Home/homebody.dart';
import 'package:openshop/MainPages/Trend/trending.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int bottomIndex = 0;
  int menuIndex = 0;
  final bottomIcons = [Icons.home,Icons.shopping_cart,
                      Icons.trending_up,Icons.chat,
                      Icons.account_circle] ;
  final bottomLabels = ["Home","Panier","Trend","Message","Moi"];
  List<Widget> pages = [const Homebody(),const Cart(),const Trending(),
                        const Chat(),const Account()];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black87,
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: height,
            width: width,
            child: pages[bottomIndex],
          ),
          bottomNavigationBar: bottomNavBar(),
        ),
      ),
    );
  }

  Widget bottomNavBar(){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Stack(children: [
        Container(
          height: 60,
          width: width,
          color: Colors.black87,
        ),
        Positioned(
          bottom: 5,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){setState(() {
                  bottomIndex = 0;
                });},
                  child: bottomIcon(Icons.home,"Acceuil",bottomIndex, 0)),

              GestureDetector(
                  onTap: (){setState(() {
                    bottomIndex = 1;
                  });},
                  child: bottomIcon(Icons.shopping_cart_outlined,"Panier", bottomIndex, 1)),

              GestureDetector(
                  onTap: (){setState(() {
                    bottomIndex = 2;
                  });},
                  child: bottomIcon(Icons.trending_up,"Trend", bottomIndex, 2)),

              GestureDetector(
                  onTap: (){setState(() {
                    bottomIndex = 3;
                  });},
                  child: bottomIcon(Icons.chat,"Message", bottomIndex, 3)),

              GestureDetector(
                  onTap: (){setState(() {
                    bottomIndex = 4;
                  });},
                  child: bottomIcon(Icons.account_circle,"Moi", bottomIndex, 4)),
            ],),
        ),

      ],),
    );
  }
}


