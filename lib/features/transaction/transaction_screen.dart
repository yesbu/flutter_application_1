import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/widgets/mychart.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child: MyChart()),
    );
  }
}
