part of '../home_page.dart';

class _GreetingText extends StatelessWidget {
  const _GreetingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Jessica',
            style: ThemeText.semibold.copyWith(
              color: ThemeColor.black1,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Let’s discover best package for you.',
            style: ThemeText.semibold.copyWith(
              color: ThemeColor.grey1,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
