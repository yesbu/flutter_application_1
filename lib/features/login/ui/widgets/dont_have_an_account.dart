import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/fonts.dart';

import '../../../../core/routing/routes.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            'Dont have an account?',
            style: FontHelper.font13WhiteW300,
          ),
          TextButton(
            onPressed: () {
            Navigator.pushNamed(context, Routes.signup);
          }, 
          child: const Text('Sign Up'))
        ],
    );
  }
} 