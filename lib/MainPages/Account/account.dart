import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Account",
        style: TextStyle(color: Colors.white, fontSize: 20),),
    );
  }
}
