import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  String output = "0";

  String _output = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  buttonPress(String buttonText) {
    if (buttonText == "clear") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == '/' ||
        buttonText == 'x' ||
        buttonText == '+' ||
        buttonText == '-') {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == "=") {
      num2 = double.parse(output);
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
      }
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }

      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }
    print(_output);

    setState(() {
      output = double.parse(_output).toString();
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: MaterialButton(
        padding: EdgeInsets.all(30),
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "ComicNeue",
              fontWeight: FontWeight.w700,
              fontSize: 25),
        ),
        onPressed: () => buttonPress(buttonText),
      ),
    );
  }

  Widget delButton() {
    return Expanded(
      child: MaterialButton(
        padding: EdgeInsets.all(30),
        child: Text(
          "Del",
          style: TextStyle(
              color: Colors.red,
              fontFamily: "ComicNeue",
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        onPressed: () => buttonPress("clear"),
      ),
    );
  }

  Widget rmButton() {
    return Expanded(
      child: MaterialButton(
        padding: EdgeInsets.all(30),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.green,
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Binary Pad",
          style:
              TextStyle(fontFamily: "ComicNeue", fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 800,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0),
              child: Text(
                output,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: "ComicNeue",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(child: Divider()),
            Row(
              children: <Widget>[
                buildButton("7"),
                buildButton("8"),
                buildButton("9"),
                buildButton("/"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("4"),
                buildButton("5"),
                buildButton("6"),
                buildButton("x"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("1"),
                buildButton("2"),
                buildButton("3"),
                buildButton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("."),
                buildButton("0"),
                buildButton("="),
                buildButton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                delButton(),
                buildButton(""),
                rmButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
