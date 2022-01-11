import 'package:flutter/material.dart';
import 'package:reusable_package/app/app_colors.dart';
import 'package:reusable_package/widgets/ReusablePadding.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;

  const ReusableCard({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusablePadding(
      child: Container(
        width: double.infinity,
        color: AppColors.caribbeanGreen,
        child: child,
      ),
    );
  }
}
