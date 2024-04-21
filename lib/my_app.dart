import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/routes.dart';
import 'package:flutter_application_1/core/routing/routing.dart';
import 'package:flutter_application_1/home_or_login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  final Routing routing;
  const MyApp({super.key, required this.routing});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390,844),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expense Tracker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeOrLogin(),
        onGenerateRoute: routing.generateRoute,
      ),
    );
  }
}