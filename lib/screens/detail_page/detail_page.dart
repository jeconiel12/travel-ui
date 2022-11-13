import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

part 'widgets/app_bar.dart';
part 'widgets/bottom_bar.dart';
part 'widgets/island_image.dart';
part 'widgets/island_header.dart';
part 'widgets/upper_body.dart';
part 'widgets/detail_section.dart';
part 'widgets/lower_body.dart';
part 'widgets/tab_bar_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              _UpperBody(),
              SizedBox(height: 70),
              _LowerBody(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const _BottomBar(),
    );
  }
}
