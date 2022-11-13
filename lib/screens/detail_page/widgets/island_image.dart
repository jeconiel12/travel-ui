part of '../detail_page.dart';

class _IslandImage extends StatelessWidget {
  const _IslandImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Image.asset(
          'assets/images/detail.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
