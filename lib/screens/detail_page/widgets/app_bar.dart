part of '../detail_page.dart';

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: ThemeColor.black2,
              ),
              child: SizedBox(
                height: 24,
                child: Image.asset('assets/icons/back.png'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: ThemeColor.black2,
              ),
              child: SizedBox(
                height: 18,
                width: 22,
                child: Image.asset('assets/icons/favorite.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
