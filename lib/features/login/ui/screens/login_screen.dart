import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/spacing.dart';
import 'package:flutter_application_1/core/theming/fonts.dart';
import 'package:flutter_application_1/core/theming/my_colors.dart';
import 'package:flutter_application_1/core/widgets/my_button.dart';
import 'package:flutter_application_1/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/build_block_listener.dart';
import '../widgets/dont_have_an_account.dart';
import '../widgets/email_and_password.dart';
import '../widgets/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(150),
            const EmailAndPassword(),
            verticalSpace(20),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
              style: FontHelper.font18BoldWhite,
              ),
            ),
            verticalSpace(50), 
            MyButton(
              gradient: 
                const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                colors: [MyColors.lightgreyColor, MyColors.purpleColor]), 
              onPressed: () {
                validateThenLogin();
              },
              child: Text(
                'Login', 
                style: FontHelper.font18BoldWhite,
              ),),
              verticalSpace(20),
              const TermsAndConditions(),
              verticalSpace(20),
              const DontHaveAnAccount(),
              const BuildBlocListener()
            ],
          ),
        )
      ),
    ); 
  }
  validateThenLogin(){
    if(context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().login();
    }
  }
}



