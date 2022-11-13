part of '../home_page.dart';

class _SearchField extends StatelessWidget {
  const _SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: ThemeColor.grey3,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 24,
                    child: Image.asset('assets/icons/search.png'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search your favorite place here.',
                        hintStyle: ThemeText.medium.copyWith(
                          color: ThemeColor.grey2,
                          fontSize: 12,
                        ),
                      ),
                      style: ThemeText.medium.copyWith(
                        color: ThemeColor.black1,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ThemeColor.grey3,
                borderRadius: BorderRadius.circular(12),
              ),
              child: SizedBox(
                height: 24,
                child: Image.asset('assets/icons/filter.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
