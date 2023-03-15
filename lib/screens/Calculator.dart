import 'package:flutter/material.dart';

import '../Components/Menu.dart';
import '../components/Keyboard.dart';
import '../components/Screen.dart';

import '../utils/calcExpression.dart';

class Calculator extends StatefulWidget {
    const Calculator({ super.key });

    @override
    State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
    String calculation = '';
    double result = 0;

    addCharacter(String text) {
        setState(()  {
            calculation = calculation + text;
        });
    }
    calcResult() {
        setState(() {
            result = calcExpression(calculation);
        });
    }
    clearScreen() {
        setState(() {
            calculation = '';
            result = 0;
        });
    }
    clearCalculation() {

        setState(() {
            calculation = '';
            result = 0;
        });
    }

    @override
    Widget build(BuildContext context) {

        return Scaffold(
            appBar: AppBar(
                title: Text("Calculadora"),
            ),
            drawer: Menu(context),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Screen(context, calculation, result.toString()),
                        SizedBox( height: 12, ),
                        Keyboard(context, (string) { addCharacter(string);}, calcResult, clearScreen )
                    ],
                ),
            ),
        );
    }
}
