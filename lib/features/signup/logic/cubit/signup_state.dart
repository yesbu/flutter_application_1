part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupErrorState extends SignupState {}

final class SignupLoadingState extends SignupState {}

final class SignupSuccesState extends SignupState {}