import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:openshop/Decorations/text_deco.dart';

Widget showImages(BuildContext context,List<Asset> images, double width, Function selectMedia){
  final int imgWidth = (width*(1/3)).toInt();
  int MAX_IMG = 6;
  int length = images.length;
  bool _updating = false;
  void update(){
    Future.delayed(const Duration(seconds: 10),()=>_updating=false);
  }
  return MasonryGridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
      itemCount: length<MAX_IMG?(length+1):length,
      itemBuilder: (context,index){
        if((index == length)&&(length<MAX_IMG)){
          return Container(
            height: imgWidth.toDouble(),
            width: imgWidth.toDouble(),
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 1),
            child: InkWell(
              onTap: ()=>selectMedia(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.photo_library_rounded,size: 40,),
                  Text("Add more photo")
                ],
              ),
            ),
          );
        }
        return ((index)==length)||(_updating)?Container(
          color: Colors.white,):Stack(
            children: [
              AssetThumb(
                asset: images[index],
                width: imgWidth,
                height: imgWidth,
              quality: 100,
              spinner: const Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),),
              ),
              Positioned(
                right: 5,
                  top: 5,
                  child: InkWell(
                    onTap: (){
                      _updating = true;
                      images.removeAt(index);
                      update();
                      print("deleted");
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      child: Icon(Icons.cancel_rounded,color: Colors.black,size: 20,),
                    ),
                  )),
            ],
          );
      }
  );
}