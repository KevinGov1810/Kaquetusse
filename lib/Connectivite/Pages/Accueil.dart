import 'package:flutter/material.dart';

class AccueilScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  AccueilScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _AccueilScreenState createState() => _AccueilScreenState();
}

class _AccueilScreenState extends State<AccueilScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                Kaquetusse_images(),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Kaquetusse",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Votre plateforme de vote en ligne sécurisée",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Bienvenue chez Kaquetusse",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        color: Color.fromRGBO(145, 202, 22, 1),
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        onPressed: () => {widget.onChangedStep(3)},
                        child: Text('Découvrir Kaquetusse'.toUpperCase())),
                    SizedBox(
                      height: 20.0,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        color: Color.fromRGBO(145, 202, 22, 1),
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        onPressed: () => {widget.onChangedStep(4)},
                        child: Text('Voter'.toUpperCase())),
                    SizedBox(
                      height: 20.0,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        color: Color.fromRGBO(145, 202, 22, 1),
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        onPressed: () => {widget.onChangedStep(10)},
                        child: Text('Candidature'.toUpperCase())),
                  ],
                ))
              ],
            )),
      ),
    ));
  }
}

// ignore: camel_case_types
class Kaquetusse_images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/kaquetusse.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      height: 150,
      width: 150,
    );
  }
}
