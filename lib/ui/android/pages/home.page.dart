import 'package:flutter/material.dart';
import 'package:imcbloc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = imcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo imc"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Altura (cm)",
              ),
              keyboardType: TextInputType.number,
              controller: bloc.heightController,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Peso (kg)",
              ),
              keyboardType: TextInputType.number,
              controller: bloc.weightController,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
                bloc.result,
                textAlign: TextAlign.center,
              ),
            ),
          Padding(
            padding: EdgeInsets.all(20),
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "Calcular",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onPressed: (){
                setState(() {
                  bloc.calculate();
                });
              },
            ),
          ),

        ],
      ),
    );
  }
}
