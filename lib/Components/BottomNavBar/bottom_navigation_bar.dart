import 'package:flutter/material.dart';

Widget bottomNavBar(){
  return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
          label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color: Colors.black,),
            label: 'Cart'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.trending_up,color: Colors.black,),
            label: 'Trend'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.message,color: Colors.black,),
            label: 'Chat'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Colors.black,),
            label: 'Me'
        ),
      ]
  );
}