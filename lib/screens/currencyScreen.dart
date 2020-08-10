import 'package:flutter/material.dart';
import 'package:unit_converter/constants.dart';
import 'package:unit_converter/screens/firstScreen.dart';
import 'package:unit_converter/screens/secondScreen.dart';

class CurrencyScreen extends StatefulWidget {
  Function setFromFunction;
  Function setToFunction;
  Function setFromTextFiled;
  CurrencyScreen(
      {this.setFromFunction, this.setToFunction, this.setFromTextFiled});

  @override
  _CurrencyScreenState createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  int _value = 1;

  String fromCurrency = currencyName[0];

  String toCurrency = currencyName[0];

  double textValue = 1.0;
  Map myMap = currencyValue;
  String result = '0';

  setFromCurrency(int value) {
    this.fromCurrency = myMap.keys.toList()[value];
    print(fromCurrency);
    calculateCurrency();
  }

  setToCurrency(int value) {
    this.toCurrency = myMap.keys.toList()[value];
    print(toCurrency);
    calculateCurrency();
  }

  setTextValue(String value) {
    this.textValue = double.parse(value);
    calculateCurrency();
    //print(textValue);
  }

  switchDropDownButon(int value) {
    switch (value) {
      case 1:
        setState(() {
          myMap = currencyValue;
        });
        break;
      case 2:
        fromCurrency = timeName[0];

        toCurrency = timeName[0];
        setState(() {
          myMap = timeValue;
        });
        break;
      case 3:
        fromCurrency = lengthValue.keys.toList()[0];

        toCurrency = lengthValue.keys.toList()[0];
        setState(() {
          myMap = lengthValue;
        });
        break;
    }
  }

  calculateCurrency() {
    double res = (myMap[fromCurrency] / myMap[toCurrency]) * textValue;
    this.result = res.toString();
    setState(() {});
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text('Currency'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Time'),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text('Length'),
                  value: 3,
                )
              ],
              onChanged: (value) {
                switchDropDownButon(value);
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
          Expanded(
            child: FirstScreen(
                setFromCurrency, setToCurrency, setTextValue, myMap),
          ),
          Expanded(child: SecondScreen(result: result)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
