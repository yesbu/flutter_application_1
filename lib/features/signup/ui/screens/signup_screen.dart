import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/spacing.dart';
import 'package:flutter_application_1/core/theming/fonts.dart';
import 'package:flutter_application_1/core/theming/my_colors.dart';
import 'package:flutter_application_1/core/widgets/my_button.dart';
import 'package:flutter_application_1/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_application_1/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_application_1/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/signup/ui/widgets/signup_form_field.dart';
import 'package:flutter_application_1/features/signup/ui/widgets/signup_listener_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.blackColor,
      appBar: AppBar(
        backgroundColor: MyColors.blackColor,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(70),
              const SignupFormFields(),
              verticalSpace(20),
              const TermsAndConditions(),
              verticalSpace(30), 
              MyButton(
                gradient: 
                  const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                  colors: [MyColors.lightgreyColor, MyColors.purpleColor]), 
                onPressed: () {
                  validateThenSignup(context);
                },
                child: Text(
                  'Sign Up', 
                  style: FontHelper.font18BoldWhite,
                ),),
                verticalSpace(20),
                const SignupListenerWidget(),
              ],
            ),
          ),
        )
      ),
    ); 
  }
  void validateThenSignup(BuildContext context) {
    if(context.read<SignupCubit>().formKey.currentState!.validate()){
      context.read<SignupCubit>().signUp();
    }
  }
}



