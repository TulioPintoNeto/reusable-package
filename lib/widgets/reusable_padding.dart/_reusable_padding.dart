part of 'package:reusable_package/widgets/widgets.dart';

class _ReusablePadding extends StatelessWidget {
  final Widget child;

  const _ReusablePadding({
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
