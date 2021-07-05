import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Connectivite/Guest.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Kaquetusse());
}

class Kaquetusse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kaquetusse',
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: const Color.fromRGBO(250, 237, 205, 1),
        ),
        home: GuestScreen());
  }
}
