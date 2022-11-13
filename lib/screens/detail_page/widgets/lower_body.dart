part of '../detail_page.dart';

class _LowerBody extends StatefulWidget {
  const _LowerBody({
    Key? key,
  }) : super(key: key);

  @override
  State<_LowerBody> createState() => _LowerBodyState();
}

class _LowerBodyState extends State<_LowerBody> {
  final tabList = ['Details', 'Reviews', 'Budget', 'Highlight'];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        const SizedBox(height: 12),
        _buildContent(),
      ],
    );
  }

  Widget _buildContent() {
    switch (_selectedIndex) {
      case 0:
        return const _DetailSection();
      case 1:
        return Text(
          tabList[_selectedIndex],
          style: ThemeText.medium.copyWith(
            color: ThemeColor.black1,
          ),
        );
      case 2:
        return Text(
          tabList[_selectedIndex],
          style: ThemeText.medium.copyWith(
            color: ThemeColor.black1,
          ),
        );
      case 3:
        return Text(
          tabList[_selectedIndex],
          style: ThemeText.medium.copyWith(
            color: ThemeColor.black1,
          ),
        );
      default:
        return Text(
          tabList[_selectedIndex],
          style: ThemeText.medium.copyWith(
            color: ThemeColor.black1,
          ),
        );
    }
  }

  Widget _buildTabBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: List.generate(
            tabList.length,
            (index) => _TabBarItem(
              name: tabList[index],
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              isSelected: _selectedIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
