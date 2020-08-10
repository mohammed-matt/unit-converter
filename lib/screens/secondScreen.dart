import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String result;
  SecondScreen({this.result});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          result,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 45,
          ),
        ),
      ),
    );
  }
}
