import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/routing.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/my_app.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp(
    routing: Routing(),
  ));
}



