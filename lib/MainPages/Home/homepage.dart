import 'package:flutter/material.dart' ;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openshop/Components/BottomNavBar/bottom_navigation_bar.dart';
import 'package:openshop/Components/MenuBar/menu_bar.dart';
import 'package:openshop/Components/MenuBar/menu_items.dart';
import 'package:openshop/Components/MenuBar/search.dart';
import 'package:openshop/MainPages/Home/body.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Wrap(children: [
            menuBar(context),
            mainBody(context),
          ],),
          bottomNavigationBar: bottomNavBar(),
        ),
      ),
    );
  }
}


