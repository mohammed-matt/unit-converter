import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  Function inputTextFunc;
  InputText(this.inputTextFunc);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      onChanged: (value) => inputTextFunc(value),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
    );
  }
}
