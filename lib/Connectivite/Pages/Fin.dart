import 'dart:async';

import 'package:flutter/material.dart';

class FinScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  FinScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _FinScreenState createState() => _FinScreenState();
}

class _FinScreenState extends State<FinScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    widget.onChangedStep(0);
    /*Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AccueilScreen(
                  onChangedStep: (int) {},
                )));*/
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(250, 237, 205, 1),
      ),
      backgroundColor: const Color.fromRGBO(250, 237, 205, 1),
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
                  "Terminé !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 40.0),
                Text(
                  "Merci, le vote est complété, vous allez être redirigé vers la page d'accueil !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                  ),
                ),
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
