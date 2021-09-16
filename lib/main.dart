import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'package:flutter/services.dart';


import './pages/agro_producers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Productores',
      home: agroProducers(),
    );
  }
}

