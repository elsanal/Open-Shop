import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:openshop/Decorations/deco_search_bar.dart';

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
  // late List<File> photos;
  // late File video;
  List<String> category = ["Clothes","Electronic"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),

        child: ListView(children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Tap to select photos"),
                ElevatedButton(
                onPressed: (){},
                child: const Icon(Icons.photo_library_rounded, size: 100,color: Colors.black,),
              ),
              ],
            ),),
          const SizedBox(height: 25,),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Tap to select a video"),
                ElevatedButton(
                  onPressed: (){},
                  child: const Icon(Icons.video_library_rounded, size: 100,color: Colors.black,),
                ),
              ],
            ),),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 1,
            decoration: uploadFieldDeco.copyWith(hintText: "Enter title"),
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
            decoration: uploadFieldDeco.copyWith(hintText: "Describe the products"),
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
            decoration: uploadFieldDeco.copyWith(hintText: "Most important characteristics"),
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
            decoration: uploadFieldDeco.copyWith(hintText: "Input tags"),
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
            decoration: uploadFieldDeco.copyWith(hintText: "Original price"),
            onChanged:(String? value){title = value!;},
          ),
          _dropDown(),
          const SizedBox(height: 25,),
          TextFormField(
            enableSuggestions: true,
            enabled: true,
            autocorrect: true,
            autofocus: true,
            maxLines: 5,
            toolbarOptions: const ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
            decoration: uploadFieldDeco.copyWith(hintText: "Actual price"),
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
            decoration: uploadFieldDeco.copyWith(hintText: "quantity"),
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
            decoration: uploadFieldDeco.copyWith(hintText: "Minimum for order"),
            onChanged:(String? value){title = value!;},
          ),
          Text(""),
          Text(""),
          Text(""),
          Text("")
        ],),
      ),
    );
  }

  Widget _dropDown(){
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              Icon(
                Icons.list,
                size: 16,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  'Select Item',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: category
              .map((item) => DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.yellow,
          iconDisabledColor: Colors.grey,
          buttonHeight: 50,
          buttonWidth: 160,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.redAccent,
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 200,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.redAccent,
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }

}
