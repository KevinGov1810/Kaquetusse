// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ChoixScreenState extends StatefulWidget {
  final Function(int) onChangedStep;

  const ChoixScreenState({Key? key, required this.onChangedStep})
      : super(key: key);
  @override
  _ChoixScreenState createState() => _ChoixScreenState();
}

class Candidats {
  String name;
  int index;
  Candidats({required this.name, required this.index});
}

class _ChoixScreenState extends State<ChoixScreenState> {
  final _formKey = GlobalKey<FormState>();
  final databaseReference =
      FirebaseDatabase.instance.reference().child("Choix");

  String radioItem = '';
  int id = 0;

  List<Candidats> fList = [
    Candidats(name: 'Youssef', index: 1),
    Candidats(name: 'Kévin', index: 2),
    Candidats(name: 'Emeline', index: 3),
    Candidats(name: 'Alexandre', index: 4),
    Candidats(name: 'Victor', index: 5),
    Candidats(name: 'Vote blanc', index: 6),
  ];

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(250, 237, 205, 1),
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: const Color.fromRGBO(250, 237, 205, 1),
        ),
        body: SafeArea(child: Center(child: _myListView())),
      ),
    );
    return materialApp;
  }

  Widget _myListView() {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        primary: Color.fromRGBO(145, 202, 22, 1),
        onPrimary: Colors.brown);
    return ListView(
      key: _formKey,
      children: <Widget>[
        Kaquetusse_images(),
        Text(
          "Kaquetusse",
          textAlign: TextAlign.center,
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
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(52, 78, 65, 1),
            fontSize: 15,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Veuillez voter pour votre candidat préféré :",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(52, 78, 65, 1),
            fontSize: 15,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(14.0),
            child: Text('$radioItem', style: TextStyle(fontSize: 20))),
        Center(
          child: Column(
            children: fList
                .map((data) => RadioListTile(
                      activeColor: Colors.green,
                      title: Text("${data.name}"),
                      subtitle: Container(
                          alignment: Alignment.bottomLeft,
                          child: TextButton(
                              child: Text('${data.name}.lien'),
                              onPressed: () {
                                if (data.name == "Youssef") {
                                  widget.onChangedStep(8);
                                } else if (data.name == "Kévin") {
                                  widget.onChangedStep(12);
                                } else if (data.name == "Emeline") {
                                  widget.onChangedStep(13);
                                } else if (data.name == "Alexandre") {
                                  widget.onChangedStep(14);
                                } else if (data.name == "Victor") {
                                  widget.onChangedStep(15);
                                } else if (data.name == "Vote blanc") {
                                  widget.onChangedStep(9);
                                }
                              })),
                      groupValue: id,
                      value: data.index,
                      onChanged: (val) {
                        setState(() {
                          radioItem = data.name;
                          id = data.index;
                        });
                      },
                    ))
                .toList(),
          ),
        ),
        // ignore: deprecated_member_use
        ElevatedButton(
            style: style,
            onPressed: () {
              if (radioItem.isNotEmpty) {
                databaseReference.child("kaquetusse").push().set({
                  'Candidat choisi': radioItem,
                });
                widget.onChangedStep(6);
              } else {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Veuillez selectionner un choix"),
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
            child: Text('Valider'.toUpperCase())),
        SizedBox(
          height: 60.0,
        ),
      ],
    );
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
      height: 80,
      width: 80,
    );
  }
}
