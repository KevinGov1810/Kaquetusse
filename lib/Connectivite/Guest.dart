import 'package:flutter/material.dart';
import 'package:kaquetusse/Connectivite/Pages/Accueil.dart';
import 'package:kaquetusse/Connectivite/Pages/Candidat.dart';
import 'package:kaquetusse/Connectivite/Pages/Candidat1.dart';
import 'package:kaquetusse/Connectivite/Pages/Candidat2.dart';
import 'package:kaquetusse/Connectivite/Pages/Candidat3.dart';
import 'package:kaquetusse/Connectivite/Pages/Code.dart';
import 'package:kaquetusse/Connectivite/Pages/Conditions.dart';
import 'package:kaquetusse/Connectivite/Pages/Decouvrir.dart';
import 'package:kaquetusse/Connectivite/Pages/Fin.dart';
import 'package:kaquetusse/Connectivite/Pages/Fin2.dart';
import 'package:kaquetusse/Connectivite/Pages/Formulaire.dart';
import 'package:kaquetusse/Connectivite/Pages/Voteblanc.dart';

import 'Pages/Auth1.dart';
import 'Pages/Auth2.dart';
import 'Pages/Candidat4.dart';
import 'Pages/ChoixCandidat.dart';

class GuestScreen extends StatefulWidget {
  GuestScreen({Key? key}) : super(key: key);

  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  List<Widget> _widgets = [];
  int _indexedSelected = 0;

  String email = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    _widgets.addAll([
      AccueilScreen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      Auth1Screen(
        onChangedStep: (index, value1, value2) => setState(() {
          _indexedSelected = index;
        }),
      ),
      ConditionScreen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      DecouvrirScreen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      CodeScreen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      Auth2Screen(
        onChangedStep: (index, value1, value2) => setState(() {
          _indexedSelected = index;
        }),
      ),
      FinScreen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      ChoixScreenState(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      CandidatScreen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      VoteblancScreen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      FormulaireScreen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      Fin2Screen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      Candidat1Screen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      Candidat2Screen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      Candidat3Screen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
      Candidat4Screen(
          onChangedStep: (index) => setState(() => _indexedSelected = index)),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _widgets.elementAt(_indexedSelected),
    );
  }
}
