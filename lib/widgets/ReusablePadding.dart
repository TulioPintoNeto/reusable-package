import 'package:flutter/material.dart';

class ReusablePadding extends StatelessWidget {
  final Widget child;

  const ReusablePadding({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}
