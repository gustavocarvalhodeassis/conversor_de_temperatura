import 'package:conversor_de_temperatura/constants.dart';
import 'package:flutter/material.dart';
import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final iconControler = AnimateIconController();
  final celciusController = TextEditingController();
  final fahrenriteController = TextEditingController();
  final kelvinController = TextEditingController();
  double? celcius;
  double? fahrenrite;
  double? kelvin;
  void _celciusCalculate(String valor) {
    if (celciusController.text == null) {
      print('nulo');
    }
    double celcius = double.parse(valor);
    fahrenriteController.text = (celcius * 1.8 + 32).toStringAsFixed(1);
    kelvinController.text = (celcius + 273).toString();
  }

  void _fahrenriteCalculate(String valor) {
    double fahrenrite = double.parse(valor);
    celciusController.text = ((fahrenrite - 32) / 1.8).toStringAsFixed(1);
    kelvinController.text =
        ((fahrenrite - 32) * 5 / 9 + 273).toStringAsFixed(1);
  }

  void _kelvinCalculate(String valor) {
    double kelvin = double.parse(valor);
    celciusController.text = (kelvin - 273).toString();
    fahrenriteController.text = ((kelvin - 273) * 1.8 + 32).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Conversor \nde temperatura',
                    style: megaTextStyle,
                  ),
                  InputPadding(),
                  buildTextFields(
                      'Celcius', '°C  ', celciusController, _celciusCalculate),
                  InputPadding(),
                  buildTextFields('Fahrenrite', '°F  ', fahrenriteController,
                      _fahrenriteCalculate),
                  InputPadding(),
                  buildTextFields(
                      'Kelvin', 'K  ', kelvinController, _kelvinCalculate),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                celciusController.clear();
                fahrenriteController.clear();
                kelvinController.clear();
              });
            },
            child: Icon(Icons.refresh_outlined)));
  }
}
