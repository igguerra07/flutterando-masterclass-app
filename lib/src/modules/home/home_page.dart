import 'package:flutter/material.dart';
import 'package:masterclass/src/modules/about/about.page.dart';
import 'package:masterclass/src/modules/activities/activities_page.dart';
import 'package:masterclass/src/modules/home/widgets/home_app_bar.dart';
import 'package:masterclass/src/modules/home/widgets/home_bottom_navigation.dart';
import 'package:masterclass/src/modules/repositories/repositories_page.dart';
import 'package:masterclass/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late int currentIndex;
  late PageController pageController;

  final pages = [
    ActivityList(),
    RepositoriesPage(),
    AboutPage(),
  ];

  @override
  void initState() {
    currentIndex = 0;

    pageController = PageController(
      initialPage: currentIndex,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HomeAppBar(),
            Expanded(
              child: PageView(
                controller: pageController,
                children: pages,
                onPageChanged: (index) => setState(() => currentIndex = index),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomNavigation(
        currentIndex: currentIndex,
        onChangePageIndex: (index) => pageController.animateToPage(
          index,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
