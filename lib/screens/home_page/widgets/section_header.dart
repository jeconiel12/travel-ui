part of '../home_page.dart';

class _SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _SectionHeader({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: ThemeText.semibold.copyWith(
              color: ThemeColor.black1,
              fontSize: 15,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              'View all',
              style: ThemeText.semibold.copyWith(
                color: ThemeColor.orange,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
