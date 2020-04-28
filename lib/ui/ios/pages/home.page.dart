import 'package:flutter/cupertino.dart';
import 'package:imcbloc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var bloc = imcBloc();


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cáculo IMC"),
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Altura(cm)",
              keyboardType: TextInputType.number,
              controller: bloc.heightController,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Peso(kg)",
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
            child: CupertinoButton.filled(
              child: Text(
                "Calcular",
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
