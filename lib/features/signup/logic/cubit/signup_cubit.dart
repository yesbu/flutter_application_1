import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/networking/firebase_helper.dart';

part 'signup_state.dart';


class SignupCubit extends Cubit<SignupState> {
  final FirebaseHelper firebasehelper;
  SignupCubit(this.firebasehelper) : super(SignupInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  signUp() async {
    emit(SignupLoadingState());
    try{
      await firebasehelper
        .registerUser(
          emailController.text.trim(), passwordController.text.trim() )
        .then((value) => emit(SignupSuccesState()));
    } catch (e){
      emit(SignupErrorState());
    }
  }
}
