part of '../detail_page.dart';

class _UpperBody extends StatelessWidget {
  const _UpperBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: const [
        _IslandImage(),
        _AppBar(),
        _IslandHeader(),
      ],
    );
  }
}
