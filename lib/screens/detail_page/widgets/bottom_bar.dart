part of '../detail_page.dart';

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
      decoration: const BoxDecoration(
        color: ThemeColor.white1,
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: Offset(0, -4),
            color: Color(0x40D0D0D0),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Total price',
                  style: ThemeText.medium.copyWith(
                    color: ThemeColor.grey7,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '\$499.00',
                  style: ThemeText.semibold.copyWith(
                    color: ThemeColor.orange,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: ThemeColor.orange,
              padding: const EdgeInsets.symmetric(
                vertical: 13,
                horizontal: 38,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Text(
              'Book now',
              style: ThemeText.medium.copyWith(
                color: ThemeColor.white4,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
