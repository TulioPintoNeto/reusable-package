part of 'package:reusable_package/widgets/widgets.dart';

class _ReusableCard extends StatelessWidget {
  final Widget child;

  const _ReusableCard({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ReusablePadding(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.caribbeanGreen,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            child,
          ],
        ),
      ),
    );
  }
}
