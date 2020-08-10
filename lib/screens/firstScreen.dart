import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_converter/widgets/inputText.dart';
import 'package:unit_converter/widgets/picker.dart';

class FirstScreen extends StatelessWidget {
  Function firstCurrencyFunction;
  Function secondCurrencyFunction;
  Function textFieldFunction;
  Map myMap;

  FirstScreen(this.firstCurrencyFunction, this.secondCurrencyFunction,
      this.textFieldFunction, this.myMap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: CurrencyPicker(firstCurrencyFunction, myMap),
          ),
          Expanded(child: InputText(textFieldFunction)),
          Expanded(
            child: CurrencyPicker(secondCurrencyFunction, myMap),
          ),
        ],
      ),
    );
  }
}
