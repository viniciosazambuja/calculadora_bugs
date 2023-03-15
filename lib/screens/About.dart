
import 'package:flutter/material.dart';

import '../Components/Menu.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre"),
      ),
      drawer: Menu(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Código utilizado na matéria de Manutenção de Software para realizar a correção de bugs.'),
          ],
        ),
      ),
    );
  }
}