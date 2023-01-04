import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

var color = [
  'Black',
  'Brown',
  'Red',
  'orange',
  'Yellow',
  'Green',
  'Blue',
  'Violet',
  'Grey',
  'White',
  'Gold',
  'Silver'
];
String colourchoosed1 = 'Black';
String colourchoosed2 = 'Black';
String colourchoosed3 = 'Black';
String colourchoosed4 = 'Black';
int fir_digit = 0;
Color fir_digitcolor = Colors.black;
int sec_digit = 0;
Color sec_digitcolor = Colors.black;
String multiplier = '0';
Color multipliercolor = Colors.black;
double tolerance = 0.0;
Color tolerancecolor = Colors.black;

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    Widget _buildPopupDialog(BuildContext context) {
      return new AlertDialog(
        title: const Text('Total Resistance is :'),
        content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                "$fir_digit.$sec_digit X $multiplier : Tolerance = 1000 \u{00B1} $tolerance"),
          ],
        ),
        actions: <Widget>[
          new TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Restance Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Image.asset(
                    'assest/1.png',
                    height: 100,
                  ),
                  ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(fir_digitcolor, BlendMode.color),
                    child: Image.asset(
                      'assest/2.png',
                      height: 100,
                    ),
                  ),
                  Image.asset(
                    'assest/3.png',
                    height: 100,
                  ),
                  ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(sec_digitcolor, BlendMode.color),
                    child: Image.asset(
                      'assest/4.png',
                      height: 100,
                    ),
                  ),
                  Image.asset(
                    'assest/5.png',
                    height: 100,
                  ),
                  ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(multipliercolor, BlendMode.color),
                    child: Image.asset(
                      'assest/6.png',
                      height: 100,
                    ),
                  ),
                  Image.asset(
                    'assest/7.png',
                    height: 100,
                  ),
                  ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(tolerancecolor, BlendMode.color),
                    child: Image.asset(
                      'assest/8.png',
                      height: 100,
                    ),
                  ),
                  Image.asset(
                    'assest/9.png',
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 4),
                child: Row(
                  children: [
                    Text("!st Digit:  "),
                    DropdownButton<String>(
                        items: color.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String? newValueSelected) {
                          colourchoosed1 = newValueSelected!;
                          if (newValueSelected == 'Black') {
                            setState(() {
                              fir_digitcolor = Colors.black;
                              fir_digit = 0;
                            });
                          } else if (newValueSelected == 'Brown') {
                            setState(() {
                              fir_digitcolor = Colors.brown;
                              fir_digit = 1;
                            });
                          } else if (newValueSelected == 'Red') {
                            setState(() {
                              fir_digitcolor = Colors.red;
                              fir_digit = 2;
                            });
                          } else if (newValueSelected == 'orange') {
                            setState(() {
                              fir_digitcolor = Colors.orange;
                              fir_digit = 3;
                            });
                          } else if (newValueSelected == 'Yellow') {
                            setState(() {
                              fir_digitcolor = Colors.yellow;
                              fir_digit = 4;
                            });
                          } else if (newValueSelected == 'Green') {
                            setState(() {
                              fir_digitcolor = Colors.green;
                              fir_digit = 5;
                            });
                          } else if (newValueSelected == 'Blue') {
                            setState(() {
                              fir_digitcolor = Colors.blue;
                              fir_digit = 6;
                            });
                          } else if (newValueSelected == 'Violet') {
                            setState(() {
                              fir_digitcolor = Colors.purple;
                              fir_digit = 7;
                            });
                          } else if (newValueSelected == 'Grey') {
                            setState(() {
                              fir_digitcolor = Colors.grey;
                              fir_digit = 8;
                            });
                          } else if (newValueSelected == 'White') {
                            setState(() {
                              fir_digitcolor = Colors.white;
                              fir_digit = 9;
                            });
                          } else if (newValueSelected == 'gold') {
                            setState(() {
                              fir_digitcolor ==
                                  Color.fromARGB(207, 255, 217, 0);
                            });
                          } else if (newValueSelected == 'Silver') {
                            setState(() {
                              fir_digitcolor =
                                  Color.fromRGBO(192, 192, 192, 100);
                            });
                          }
                          print(fir_digitcolor);
                        },
                        value: colourchoosed1),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  children: [
                    Text("2nd Digit:  "),
                    DropdownButton<String>(
                        items: color.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String? newValueSelected) {
                          colourchoosed2 = newValueSelected!;
                          if (newValueSelected == 'Black') {
                            setState(() {
                              sec_digitcolor = Colors.black;
                              sec_digit = 0;
                            });
                          } else if (newValueSelected == 'Brown') {
                            setState(() {
                              sec_digitcolor = Colors.brown;
                              sec_digit = 1;
                            });
                          } else if (newValueSelected == 'Red') {
                            setState(() {
                              sec_digitcolor = Colors.red;
                              sec_digit = 2;
                            });
                          } else if (newValueSelected == 'orange') {
                            setState(() {
                              sec_digitcolor = Colors.orange;
                              sec_digit = 3;
                            });
                          } else if (newValueSelected == 'Yellow') {
                            setState(() {
                              sec_digitcolor = Colors.yellow;
                              sec_digit = 4;
                            });
                          } else if (newValueSelected == 'Green') {
                            setState(() {
                              sec_digitcolor = Colors.green;
                              sec_digit = 5;
                            });
                          } else if (newValueSelected == 'Blue') {
                            setState(() {
                              sec_digitcolor = Colors.blue;
                              sec_digit = 6;
                            });
                          } else if (newValueSelected == 'Violet') {
                            setState(() {
                              sec_digitcolor = Colors.purple;
                              sec_digit = 7;
                            });
                          } else if (newValueSelected == 'Grey') {
                            setState(() {
                              sec_digitcolor = Colors.grey;
                              sec_digit = 8;
                            });
                          } else if (newValueSelected == 'White') {
                            setState(() {
                              sec_digitcolor = Colors.white;
                              sec_digit = 9;
                            });
                          } else if (newValueSelected == 'gold') {
                            setState(() {
                              sec_digitcolor ==
                                  Color.fromARGB(207, 255, 217, 0);
                            });
                          } else if (newValueSelected == 'Silver') {
                            setState(() {
                              sec_digitcolor =
                                  Color.fromRGBO(192, 192, 192, 100);
                            });
                          }
                          print(sec_digitcolor);
                        },
                        value: colourchoosed2),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 4),
                child: Row(
                  children: [
                    Text("Multiplier:  "),
                    DropdownButton<String>(
                        items: color.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String? newValueSelected) {
                          colourchoosed3 = newValueSelected!;
                          if (newValueSelected == 'Black') {
                            setState(() {
                              multipliercolor = Colors.black;
                              multiplier = '1';
                            });
                          } else if (newValueSelected == 'Brown') {
                            setState(() {
                              multipliercolor = Colors.brown;
                              multiplier = '10';
                            });
                          } else if (newValueSelected == 'Red') {
                            setState(() {
                              multipliercolor = Colors.red;
                              multiplier = '100';
                            });
                          } else if (newValueSelected == 'orange') {
                            setState(() {
                              multipliercolor = Colors.orange;
                              multiplier = '1k';
                            });
                          } else if (newValueSelected == 'Yellow') {
                            setState(() {
                              multipliercolor = Colors.yellow;
                              multiplier = '10k';
                            });
                          } else if (newValueSelected == 'Green') {
                            setState(() {
                              multipliercolor = Colors.green;
                              multiplier = '100k';
                            });
                          } else if (newValueSelected == 'Blue') {
                            setState(() {
                              multipliercolor = Colors.blue;
                              multiplier = '1M';
                            });
                          } else if (newValueSelected == 'Violet') {
                            setState(() {
                              multipliercolor = Colors.purple;
                              multiplier = '10M';
                            });
                          } else if (newValueSelected == 'Grey') {
                            setState(() {
                              multipliercolor = Colors.grey;
                              multiplier = '100M';
                            });
                          } else if (newValueSelected == 'White') {
                            setState(() {
                              multipliercolor = Colors.white;
                              multiplier = '1G';
                            });
                          } else if (newValueSelected == 'gold') {
                            setState(() {
                              multipliercolor =
                                  Color.fromARGB(207, 255, 217, 0);
                              multiplier = '0.1';
                            });
                          } else if (newValueSelected == 'Silver') {
                            setState(() {
                              multipliercolor =
                                  Color.fromRGBO(192, 192, 192, 100);
                              multiplier = '0.01';
                            });
                          }
                          print(multipliercolor);
                        },
                        value: colourchoosed3),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 4),
                child: Row(
                  children: [
                    Text("Tolerance:  "),
                    DropdownButton<String>(
                        items: color.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String? newValueSelected) {
                          colourchoosed4 = newValueSelected!;
                          if (newValueSelected == 'Black') {
                            setState(() {
                              tolerancecolor = Colors.black;
                              tolerance = 0;
                            });
                          } else if (newValueSelected == 'Brown') {
                            setState(() {
                              tolerancecolor = Colors.brown;
                              tolerance = 1;
                            });
                          } else if (newValueSelected == 'Red') {
                            setState(() {
                              tolerancecolor = Colors.red;
                              tolerance = 2;
                            });
                          } else if (newValueSelected == 'orange') {
                            setState(() {
                              tolerancecolor = Colors.orange;
                              tolerance = 3;
                            });
                          } else if (newValueSelected == 'Yellow') {
                            setState(() {
                              tolerancecolor = Colors.yellow;
                              tolerance = 4;
                            });
                          } else if (newValueSelected == 'Green') {
                            setState(() {
                              tolerancecolor = Colors.green;
                              tolerance = 0.5;
                            });
                          } else if (newValueSelected == 'Blue') {
                            setState(() {
                              tolerancecolor = Colors.blue;
                              tolerance = 0.25;
                            });
                          } else if (newValueSelected == 'Violet') {
                            setState(() {
                              tolerancecolor = Colors.purple;
                              tolerance = 0.10;
                            });
                          } else if (newValueSelected == 'Grey') {
                            setState(() {
                              tolerancecolor = Colors.grey;
                              tolerance = 0.05;
                            });
                          } else if (newValueSelected == 'White') {
                            setState(() {
                              tolerancecolor = Colors.white;
                              tolerance = 0;
                            });
                          } else if (newValueSelected == 'gold') {
                            setState(() {
                              tolerancecolor = Color.fromARGB(207, 255, 217, 0);
                              tolerance = 5;
                            });
                          } else if (newValueSelected == 'Silver') {
                            setState(() {
                              tolerancecolor =
                                  Color.fromRGBO(192, 192, 192, 100);
                              tolerance = 10;
                            });
                          }
                          print(colourchoosed4);
                        },
                        value: colourchoosed4),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
