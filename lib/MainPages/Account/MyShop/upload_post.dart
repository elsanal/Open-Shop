import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:openshop/Components/imgGrid.dart';
import 'package:openshop/Database/upload_data.dart';
import 'package:openshop/Decorations/deco_search_bar.dart';
import 'package:openshop/Decorations/text_deco.dart';

class UploadPost extends StatefulWidget {
  const UploadPost({Key? key}) : super(key: key);

  @override
  State<UploadPost> createState() => _UploadPostState();
}

class _UploadPostState extends State<UploadPost> {

  String title = '';
  String description = '';
  String charact = '';
  String tag = '';
  String? selectedValue;
  List<Asset> images = <Asset>[];
  List<String> category = ["Clothes","Electronics","Shoes","Furniture","Toys",
    "Gadgets","Foods","Drinks","Books","Construction",
    "Automobile","Animal","Renting"];
  final _formKey = GlobalKey<FormState>();

  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final imgLength = images.length;
    final videoLength = images.length;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Make a new post"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        child: Form(

          child: ListView(children: [
            const SizedBox(height: 10,),
          imgLength==0?Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            decoration: const BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Tap to select photos"),
                ElevatedButton(
                  onPressed: ()=>selectMedia(),
                  child: const Icon(Icons.photo_library_rounded, size: 100,color: Colors.black,),
                ),
              ],
            ),):showImages(context,images,width,selectMedia),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 1,
            decoration: uploadFieldDeco.copyWith(hintText: "Enter a description of the product"),
            onChanged:(String? value){title = value!;},
          ),
          const SizedBox(height: 25,),
          _dropDown(height, width),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 5,
            toolbarOptions: const ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
            decoration: uploadFieldDeco.copyWith(hintText: "Most important characteristics of the product"),
            onChanged:(String? value){title = value!;},
          ),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 5,
            toolbarOptions: const ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
            decoration: uploadFieldDeco.copyWith(hintText: "Add some tags to make your product more searchable"),
            onChanged:(String? value){title = value!;},
          ),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 1,
            toolbarOptions: const ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
            decoration: uploadFieldDeco.copyWith(hintText: "Original price"),
            onChanged:(String? value){title = value!;},
          ),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 1,
            toolbarOptions: const ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
            decoration: uploadFieldDeco.copyWith(hintText: "If there is a discount now, "
                "please enter the actual price. If not enter the original price"),
            onChanged:(String? value){title = value!;},
          ),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 1,
            toolbarOptions: const ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
            decoration: uploadFieldDeco.copyWith(hintText: "How many products are on sell?"),
            onChanged:(String? value){title = value!;},
          ),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 1,
            toolbarOptions: const ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
            decoration: uploadFieldDeco.copyWith(hintText: "Minimum for order"),
            onChanged:(String? value){title = value!;},
          ),
          const SizedBox(height: 25,),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent)),
              onPressed: (){},
              child: const Text("Tap to upload online")),
          const SizedBox(height: 50,),
        ],),),
      ),
    );
  }

  Widget _dropDown(double height, double width){
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Text(
            'Tap to select product category',
            style: style,
            overflow: TextOverflow.ellipsis,
          ),
          items: category
              .map((item) => DropdownMenuItem<String>(
            value: item,
            child: ListTile(
              leading: Text(
                item,
                style: style,
                overflow: TextOverflow.ellipsis,
              ),
            )
          )).toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.yellow,
          iconDisabledColor: Colors.grey,
          // buttonHeight: 50,
          // buttonWidth: 160,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.orange,
            ),
            color: Colors.white,
          ),
          buttonElevation: 0,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: height/2,
          dropdownWidth: width*(2/3),
          dropdownPadding:null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          dropdownElevation: 5,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(20, 3),
        ),
      ),
    );
  }

  Future<void> selectMedia()async{
    List<Asset> result = <Asset>[];

    try{

      result = await MultiImagePicker.pickImages(
          maxImages: 6,
          enableCamera: true,
          selectedAssets: images,
          cupertinoOptions: const CupertinoOptions(
              takePhotoIcon: "Take photo"
          ),
          materialOptions: const MaterialOptions(
              actionBarColor: "black",
              actionBarTitle: "Select up to 5"
          )
      );

      setState(() {
        images = result;
      });

    }catch(e){
      if (kDebugMode) {
        print(e);
      }
    }
  }

  void delete(int index){
    images.removeAt(index);
  }

}
