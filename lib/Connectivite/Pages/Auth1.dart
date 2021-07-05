import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kaquetusse/models/UserService.dart';

class Auth1Screen extends StatefulWidget {
  final Function(int, String, String) onChangedStep;

  Auth1Screen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _Auth1ScreenState createState() => _Auth1ScreenState();
}

class _Auth1ScreenState extends State<Auth1Screen> {
  String email = '';
  String password = '';
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  bool _isSecret = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var authHandler = new UserService();

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
          onPressed: () => widget.onChangedStep(0, '', ''),
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
                  height: 20.0,
                ),
                Text(
                  "Vote en ligne numéro 1",
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
                  "Veuillez rentrer l'identifiant et le mot de passe que vous avez reçu par mail",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Form(
                    key: _formKey1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Identifiant"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                            onChanged: (value) => setState(() => email = value),
                            validator: (value) =>
                                value!.isEmpty || !emailRegex.hasMatch(value)
                                    ? "Veuillez entrer une adresse email valide"
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
                        SizedBox(height: 15.0),
                      ],
                    )),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Mot de passe"),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                        onChanged: (value) => setState(() => password = value),
                        validator: (value) => value!.isEmpty
                            ? "Veuillez entrer un mot de passe valide"
                            : null,
                        obscureText: _isSecret,
                        decoration: InputDecoration(
                            hintText: "Mot de passe",
                            suffixIcon: InkWell(
                              onTap: () =>
                                  setState(() => _isSecret = !_isSecret),
                              child: Icon(!_isSecret
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
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
                        onPressed: !emailRegex.hasMatch(email) ||
                                password.isEmpty
                            ? null
                            : () {
                                if (_formKey1.currentState!.validate()) {
                                  authHandler
                                      .auth(email, password)
                                      .then((User user) {
                                    widget.onChangedStep(2, email, password);
                                    // ignore: invalid_return_type_for_catch_error
                                  }).catchError((err) {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text(
                                                "Identifiant ou mot de passe incorrects"),
                                            //content: Text(err.message),
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
                                  });
                                }
                              },
                        child: Text('continuer'.toUpperCase()))
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
