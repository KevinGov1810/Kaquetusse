import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FormulaireScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  FormulaireScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _FormulaireScreenState createState() => _FormulaireScreenState();
}

class _FormulaireScreenState extends State<FormulaireScreen> {
  final maxLines = 5;
  String nomprenom = '';
  String email = '';
  String description = '';
  final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final databaseReference =
      FirebaseDatabase.instance.reference().child("Formulaire");

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
                  height: 40.0,
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
                  height: 50.0,
                ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Nom Prénom"),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        onChanged: (value) => setState(() => nomprenom = value),
                        validator: (value) =>
                            // ignore: unrelated_type_equality_checks
                            value!.isEmpty || !emailRegex.hasMatch(value)
                                ? "Veuillez entrer un prénom et/ou un nom valide"
                                : null,
                        decoration: InputDecoration(
                            hintText: "Nom Prénom",
                            filled: true,
                            fillColor: Color.fromRGBO(233, 250, 200, 1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(233, 250, 200, 1),
                                  width: 3,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(233, 250, 200, 1),
                                  width: 3,
                                )))),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Email"),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        onChanged: (value) => setState(() => email = value),
                        validator: (value) =>
                            // ignore: unrelated_type_equality_checks
                            value!.isEmpty
                                ? "Veuillez entrer un email valide"
                                : null,
                        decoration: InputDecoration(
                            hintText: "Email",
                            filled: true,
                            fillColor: Color.fromRGBO(233, 250, 200, 1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(233, 250, 200, 1),
                                  width: 3,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(233, 250, 200, 1),
                                  width: 3,
                                )))),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Description"),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                        height: maxLines * 24.0,
                        child: TextFormField(
                            maxLines: maxLines,
                            onChanged: (value) =>
                                setState(() => description = value),
                            validator: (value) =>
                                // ignore: unrelated_type_equality_checks
                                value!.isEmpty
                                    ? "Veuillez entrer un email valide"
                                    : null,
                            decoration: InputDecoration(
                                hintText: "Votre description",
                                filled: true,
                                fillColor: Color.fromRGBO(233, 250, 200, 1),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(233, 250, 200, 1),
                                      width: 3,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(233, 250, 200, 1),
                                      width: 3,
                                    ))))),
                    SizedBox(
                      height: 20.0,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        color: Color.fromRGBO(145, 202, 22, 1),
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        onPressed: nomprenom.isEmpty ||
                                description.isEmpty ||
                                email.isEmpty ||
                                !emailRegex.hasMatch(email)
                            ? null
                            : () => {
                                  if (description.isNotEmpty &&
                                      nomprenom.isNotEmpty &&
                                      email.isNotEmpty)
                                    {
                                      databaseReference
                                          .child("kaquetusse")
                                          .push()
                                          .set({
                                        'Nom et Prenom du candidat': nomprenom,
                                        'Email du candidat': email,
                                        'Description du candidat': description,
                                      })
                                    },
                                  widget.onChangedStep(11)
                                },
                        child: Text('Envoyer sa candidature'.toUpperCase())),
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
