part of '../detail_page.dart';

class _TabBarItem extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  final bool isSelected;

  const _TabBarItem({
    Key? key,
    required this.name,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 38),
            child: Text(
              name,
              style: ThemeText.medium.copyWith(
                color: isSelected ? ThemeColor.orange : ThemeColor.grey5,
                fontSize: 13,
              ),
            ),
          ),
          const SizedBox(height: 2),
          isSelected
              ? SizedBox(height: 6, child: Image.asset('assets/icons/slide.png'))
              : const SizedBox(height: 6)
        ],
      ),
    );
  }
}
