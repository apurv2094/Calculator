import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _onClear() {
    setState(() {
      controller1.text = "";
      controller2.text = "";
    });
  }

  double i = 0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Simple Calculator"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    i.toString(),
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter FIRST Number",
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    controller: controller1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter SECOND Number",
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    controller: controller2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.lightBlue)),
                      color: Colors.white,
                      child: Text("ADD"),
                      onPressed: () {
                        double a = double.parse(controller1.text);
                        double b = double.parse(controller2.text);
                        i = a + b;
                        setState(() {
                          i = num.parse(i.toStringAsFixed(9));
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.lightBlue)),
                      color: Colors.white,
                      child: Text("SUBTRACT"),
                      onPressed: () {
                        double a = double.parse(controller1.text);
                        double b = double.parse(controller2.text);
                        i = a - b;
                        setState(() {
                          i = num.parse(i.toStringAsFixed(9));
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.lightBlue)),
                      color: Colors.white,
                      child: Text("MULTIPLY"),
                      onPressed: () {
                        double a = double.parse(controller1.text);
                        double b = double.parse(controller2.text);
                        i = a * b;
                        setState(() {
                          i = num.parse(i.toStringAsFixed(9));
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.lightBlue)),
                      color: Colors.white,
                      child: Text("DIVIDE"),
                      onPressed: () {
                        double a = double.parse(controller1.text);
                        double b = double.parse(controller2.text);
                        i = a / b;
                        setState(() {
                          i = num.parse(i.toStringAsFixed(9));
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.lightBlue)),
                      color: Colors.white,
                      child: Text("CLEAR"),
                      onPressed: () {
                        setState(() {
                          _onClear();
                          i = 0;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
