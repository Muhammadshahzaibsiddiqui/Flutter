import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "";

  Widget calcbtn(texttt) {
    print(int.tryParse(texttt));
    return ElevatedButton(
      onPressed: () {
        calc(texttt);
      },
      child: Text(texttt),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (int.tryParse(texttt) == null) return Colors.green;
            return Colors.red; // Use the component's default.
          },
        ),
      ),
    );
  }

  calc(texttt) {
    setState(() {
      result = result + texttt;
    });
  }

  clearr() {
    setState(() {
      result = "";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  result,
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height-265,
                  width: 360,
                  child: GridView.count(primary: false, padding: const EdgeInsets.all(10), crossAxisSpacing: 25, mainAxisSpacing: 25, crossAxisCount: 4, physics: NeverScrollableScrollPhysics(), children: [
                    calcbtn('1'),
                    calcbtn('2'),
                    calcbtn('3'),
                    calcbtn('+'),
                    calcbtn('4'),
                    calcbtn('5'),
                    calcbtn('6'),
                    calcbtn('-'),
                    calcbtn('7'),
                    calcbtn('8'),
                    calcbtn('9'),
                    calcbtn('*'),
                    calcbtn("0"),
                    calcbtn("."),
                    ElevatedButton(
                      onPressed: clearr,
                      child: Text(
                        'Clear',
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                    calcbtn("/"),
                  ])),
              Container(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                height: 50,
                child: ElevatedButton(
                  child: Text('=', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: output,
                ),
              ))
            ])),
      ),
    );
  }
}
