import 'package:flutter/material.dart';

class DecouvrirScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  DecouvrirScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _DecouvrirScreenState createState() => _DecouvrirScreenState();
}

class _DecouvrirScreenState extends State<DecouvrirScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color.fromRGBO(52, 78, 65, 1),
          onPressed: () => widget.onChangedStep(0),
        ),
      ),
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
                  "Présentation de l'équipe et du projet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 40.0),
                Text(
                  "Bienvenue dans Kaquetusse !",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Kaquetusse est une application multiplateforme de vote à distance.",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Depuis les récents événements sanitaires, nous avons dû trouver une solution afin de préserver les usages tels que le vote afin de ne pas prendre de retard sur des élections officielles ou encore de décisions au sein des entreprises.",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Pour se faire, l’équipe Kaquetusse composée d’étudiants à Efrei Paris, vous propose cette application de vote à distance de manière sécurisée.",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Pour toute autre demande, vous pouvez nous contacter à :",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                  ),
                ),
                Text(
                  "contact@kaquetusse.fr",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Cliquez ! Votez !",
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 40.0,
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
                        onPressed: () => {widget.onChangedStep(4)},
                        child: Text('Voter'.toUpperCase()))
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
