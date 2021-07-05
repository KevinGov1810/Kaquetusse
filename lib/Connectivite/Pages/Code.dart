import 'package:flutter/material.dart';
//import 'dart:math';

class CodeScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  CodeScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _CodeScreenState createState() => _CodeScreenState();
}

/*const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));*/

class _CodeScreenState extends State<CodeScreen> {
  String code = '';
  String code1 = "vote1-2021";
  String code2 = "vote2-2021";
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

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
                  "Veuillez rentrer le code que vous avez reçu par mail",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  "Code d'accès",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Form(
                    key: _formKey1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Code"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                            onChanged: (value) => setState(() => code = value),
                            validator: (value) =>
                                // ignore: unrelated_type_equality_checks
                                value!.isEmpty || value != code1
                                    ? "Veuillez entrer un code valide"
                                    : null,
                            decoration: InputDecoration(
                                hintText: "Code d'accès",
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
                        // ignore: deprecated_member_use
                        RaisedButton(
                            color: Color.fromRGBO(145, 202, 22, 1),
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            onPressed: code.isEmpty
                                ? null
                                : () {
                                    if (code == code1) {
                                      widget.onChangedStep(1);
                                    } else if (code == code2) {
                                      widget.onChangedStep(5);
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Code incorrect"),
                                              actions: [
                                                TextButton(
                                                  child: Text("OK"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                )
                                              ],
                                            );
                                          });
                                    }
                                  },
                            child: Text('Continuer'.toUpperCase()))
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
