part of '../detail_page.dart';

class _IslandHeader extends StatefulWidget {
  const _IslandHeader({Key? key}) : super(key: key);

  @override
  _IslandHeaderState createState() => _IslandHeaderState();
}

class _IslandHeaderState extends State<_IslandHeader> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -50,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          boxShadow: const [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 4),
              color: Color(0x40D0D0D0),
            )
          ],
          color: ThemeColor.white1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wilson Island Tour',
              style: ThemeText.semibold.copyWith(
                color: ThemeColor.black1,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '\$499.00',
                    style: ThemeText.semibold.copyWith(
                      color: ThemeColor.orange,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                  child: Image.asset('assets/icons/location_black.png'),
                ),
                const SizedBox(width: 7),
                Text(
                  'Maldives, Asia',
                  style: ThemeText.medium.copyWith(
                    color: ThemeColor.black1,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
