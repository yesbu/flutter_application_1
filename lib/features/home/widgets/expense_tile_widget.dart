import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/fonts.dart';
import 'package:flutter_application_1/core/helpers/spacing.dart';

class ExpenseTileWidget extends StatelessWidget {
  const ExpenseTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 41, 39, 78),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bills',
                      style: FontHelper.font18BoldWhite,
                    ),
                    verticalSpace(10),
                    Text(
                      '17 mar , 2024',
                      style: FontHelper.font18BoldWhite,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    '-7000 kzt',
                    style: FontHelper.font18BoldWhite,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
              ))
        ],
      ),
    );
  }
}
