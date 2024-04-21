import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/fonts.dart';
import 'package:flutter_application_1/features/home/widgets/my_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/core/helpers/spacing.dart';

import 'package:flutter_application_1/features/home/widgets/balance_widget.dart';
import 'package:flutter_application_1/features/home/widgets/expense_tile_widget.dart';
import 'package:flutter_application_1/features/home/widgets/percent_widget.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(10),
              const MyAppBar(),
              verticalSpace(10),
              const BalanceWidget(),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top Transactions',
                  style: FontHelper.font18BoldWhite,
                ),
              ),
              verticalSpace(20),
              const PercentWidget(),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Latest Transactions',
                  style: FontHelper.font18BoldWhite,
                ),
              ),
              SizedBox(
                height: 500.h,
                child: ListView(
                  children: const [
                    ExpenseTileWidget(),
                    ExpenseTileWidget(),
                    ExpenseTileWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
