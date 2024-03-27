import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/fonts.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'By continuing, you agree to our Terms \n of Use and Privacy Policy', 
        style: FontHelper.font13GreyW300,
        textAlign: TextAlign.center,
      ),
    );
  }
}