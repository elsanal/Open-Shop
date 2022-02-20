import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration formFieldDeco = InputDecoration(
  hintText: " Type product name or category or brand...",
  hintStyle: const TextStyle(color: Colors.white),
  contentPadding: EdgeInsets.only(
    top: ScreenUtil().setHeight(0),
    bottom: ScreenUtil().setHeight(0),
    left: ScreenUtil().setHeight(10),
    right: ScreenUtil().setHeight(10),
  ),
  fillColor: Colors.black,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
          Radius.circular(ScreenUtil().setWidth(25))
      ),
      borderSide: const BorderSide(color: Colors.orange,width: 2.0)
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
          Radius.circular(ScreenUtil().setWidth(25))
      ),
      borderSide: const BorderSide(color: Colors.white,width: 2.0)
  ),
  // suffix: Text("Search"),
  suffixIcon: const Icon(Icons.search, color: Colors.orange,),
);

InputDecoration settingFormFieldDeco = InputDecoration(
  hintStyle: const TextStyle(color: Colors.black),
  contentPadding: EdgeInsets.only(
    top: ScreenUtil().setHeight(0),
    bottom: ScreenUtil().setHeight(0),
    left: ScreenUtil().setHeight(10),
    right: ScreenUtil().setHeight(10),
  ),
  fillColor: Colors.white70,
  filled: true,
  focusColor: Colors.black87,
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
          Radius.circular(ScreenUtil().setWidth(25))
      ),
      borderSide: const BorderSide(color: Colors.black87,width: 2.0)
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
          Radius.circular(ScreenUtil().setWidth(25))
      ),
      borderSide: const BorderSide(color: Colors.black87,width: 2.0)
  ),
);