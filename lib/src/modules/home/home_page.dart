import 'package:flutter/material.dart';
import 'package:masterclass/src/modules/activities/widgets/activity_list.dart';
import 'package:masterclass/src/modules/home/widgets/home_app_bar.dart';
import 'package:masterclass/src/modules/home/widgets/home_bottom_navigation.dart';
import 'package:masterclass/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              HomeAppBar(),
              ActivityList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomNavigation(),
    );
  }
}
