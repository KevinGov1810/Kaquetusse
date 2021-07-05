import 'package:flutter/material.dart';

class VoteblancScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  VoteblancScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _VoteblancScreenState createState() => _VoteblancScreenState();
}

class _VoteblancScreenState extends State<VoteblancScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(250, 237, 205, 1),
        title: Text('Vote Blanc',
            style:
                TextStyle(color: Color.fromRGBO(52, 78, 65, 1), fontSize: 30)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color.fromRGBO(52, 78, 65, 1),
          onPressed: () => {
            widget.onChangedStep(7),
          },
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
                  "Bienvenue chez Kaquetusse",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Vote Blanc :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    SizedBox(height: 40.0),
                    Text(
                        "Lors d'une élection, le vote blanc est le fait de ne voter pour aucun des candidats, ou aucune des propositions dans le cas d'un référendum.",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    Text(
                      "À mi-chemin entre l'abstention et la participation électorale, il est à différencier de l'abstention (absence de vote) et du vote nul (vote non valable). Bien qu'il ne soit pas souvent comptabilisé comme un vote exprimé et qu’il soit moins médiatisé que l’abstention, il est généralement considéré comme un moyen d’expression politique.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
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
