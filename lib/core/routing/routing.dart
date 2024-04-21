import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/networking/firebase_helper.dart';
import 'package:flutter_application_1/core/routing/routes.dart';
import 'package:flutter_application_1/features/home/home_screen.dart';
import 'package:flutter_application_1/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_application_1/features/login/ui/screens/login_screen.dart';
import 'package:flutter_application_1/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/signup/ui/screens/signup_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routing {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => LoginCubit(FirebaseHelper()),
                  child: const LoginScreen(),
                ));
      case Routes.home:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => LoginCubit(FirebaseHelper()),
                  child: const HomeScreen(),
                ));
      case Routes.signup:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => 
                  SignupCubit(FirebaseHelper()),
                  child: const SignupScreen(),
                ));
      default:
        return MaterialPageRoute(builder: (context) => const NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('No Route Found'),
      ),
    );
  }
}
