import 'package:flutter/material.dart';


class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: const Center(
        child: Text("Trending",
          style: TextStyle(color: Colors.white, fontSize: 20),),
      ),
    );
  }
}
