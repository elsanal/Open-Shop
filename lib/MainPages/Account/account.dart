import 'package:flutter/material.dart';
import 'package:openshop/MainPages/Account/account_header.dart';

import 'account_body.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ScrollPhysics(),
      slivers: [
        accountHeader(context),
        accountBody(context),
      ],
    );
  }
}
