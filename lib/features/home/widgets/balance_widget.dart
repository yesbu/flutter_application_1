import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/spacing.dart';
import 'package:flutter_application_1/core/theming/fonts.dart';
import 'package:flutter_application_1/core/theming/my_colors.dart';
class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: MyColors.navycolor,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Your Balance',
                style: FontHelper.font18BoldWhite,
              ),
              verticalSpace(5),
              Text(
                '50 000 kzt',
                style: FontHelper.font18BoldWhite,
              ),
            ],
          ),
          CircleAvatar(
            radius: 30,
            child: IconButton(
              color: Colors.cyan,
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
