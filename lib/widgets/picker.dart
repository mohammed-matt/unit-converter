import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyPicker extends StatelessWidget {
  Function selectIem;
  Map pickerMap;
  CurrencyPicker(this.selectIem, this.pickerMap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPicker(
      itemExtent: 50,
      onSelectedItemChanged: (value) {
        selectIem(value);
        print(pickerMap.keys.toList());
      },
      children: pickerMap.keys.map((e) => Text(e)).toList(),
    );
  }
}
