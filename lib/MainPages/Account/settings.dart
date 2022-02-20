import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:location/location.dart';
import 'package:openshop/Decorations/deco_search_bar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  Location location = Location();
  late bool _serviceEnabled;
  late Future<LocationData> _locationData = checkPermission();


  Future<LocationData> checkPermission()async{
    _serviceEnabled = await location.serviceEnabled();
    if(!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
    }
    PermissionStatus _permissionStatus = await location.hasPermission();
    if(_permissionStatus == PermissionStatus.denied){
        _permissionStatus = await location.requestPermission();
    }
     LocationData _locationData = await location.getLocation();
    return _locationData;
  }


  @override
  void initState(){
    _serviceEnabled = false;
    // _locationData = checkPermission();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.black87,
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor:Colors.black87,
        centerTitle: true,
        actions: [
          ElevatedButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text("Done",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            style: ButtonStyle(
                backgroundColor: 
                MaterialStateProperty.all(Colors.black)),
          )
        ],
      ),
      body: ListView(children: [
        _changeInfo("username","SANA Aloute"),
        const SizedBox(height: 10,),
        _changeInfo("email","shopnow@gmail.com"),
        const SizedBox(height: 10,),
        _changeInfo("Tel","131 4139 2484"),
        const SizedBox(height: 10,),
        _changeInfo("country","Burkina Faso"),
        const SizedBox(height: 10,),
        _changeInfo("city","Beijing"),
        const SizedBox(height: 10,),
        // _changeInfo("location",
        //     "lat.: ${_locationData.?latitude}, "
        //         "long.: ${_locationData.longitude}"),
        // const SizedBox(height: 10,),
      ],),
    );
  }

  Widget _changeInfo(String label, String hint,){
    return Container(
      color: Colors.white24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(10),
            top: ScreenUtil().setHeight(10)
          ),
            child: Text("Change your $label", style: const TextStyle(color: Colors.white),)),
        const SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(10),
              right: ScreenUtil().setHeight(10),
              bottom: ScreenUtil().setHeight(10)
          ),
          child: TextFormField(decoration: settingFormFieldDeco.copyWith(
            hintText: hint,),),
        ),
      ],),
    );
  }
}
