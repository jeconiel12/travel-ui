import 'package:flutter/material.dart';
import 'package:travel_app/screens/detail_page/detail_page.dart';
import 'package:travel_app/theme.dart';

part 'widgets/app_bar.dart';
part 'widgets/greeting_text.dart';
part 'widgets/popular_list.dart';
part 'widgets/recommended_list.dart';
part 'widgets/search_field.dart';
part 'widgets/section_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 30),
              _AppBar(),
              SizedBox(height: 30),
              _GreetingText(),
              SizedBox(height: 25),
              _SearchField(),
              SizedBox(height: 25),
              _RecommendedList(),
              SizedBox(height: 25),
              _PopularList(),
            ],
          ),
        ),
      ),
    );
  }
}
