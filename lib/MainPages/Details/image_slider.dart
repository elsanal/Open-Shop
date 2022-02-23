import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget imageSwiper(int length, double width, double height){
  return SizedBox(
    height: height*(1/2),
    width: width,
    child: Swiper(
      itemCount: length,
      autoplay: false,
      viewportFraction: 0.9,
      curve: Curves.bounceInOut,
      itemHeight: height*(1/2),
      itemWidth: width,
      itemBuilder: (context, index)=>Card(
        child: Card(
          child: Image.asset(
              'assets/img${index+1}.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      indicatorLayout: PageIndicatorLayout.COLOR,
      pagination: const SwiperPagination(
        builder: SwiperPagination.fraction,
        margin: EdgeInsets.all(10),
        alignment: Alignment.bottomRight
      ),
    ),
  );
}