import 'package:flutter/material.dart';
import 'package:masterclass/theme/colors.dart';
import 'package:masterclass/theme/icons.dart';

class HomeBottomNavigation extends StatelessWidget {
  final Function(int) onChangePageIndex;
  final int currentIndex;
  const HomeBottomNavigation({
    Key? key,
    required this.onChangePageIndex,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.transparent,
      items: [
        BottomNavigationBarItem(
          activeIcon: GestureDetector(
            onTap: (() => onChangePageIndex(0)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ThemeColors.card,
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(ThemeIcons.target),
            ),
          ),
          icon: GestureDetector(
            onTap: (() => onChangePageIndex(0)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(ThemeIcons.target),
            ),
          ),
          label: "Atividades",
        ),
        BottomNavigationBarItem(
          activeIcon: GestureDetector(
            onTap: (() => onChangePageIndex(1)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ThemeColors.card,
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                ThemeIcons.github,
              ),
            ),
          ),
          icon: GestureDetector(
            onTap: (() => onChangePageIndex(1)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(ThemeIcons.github),
            ),
          ),
          label: "Repositórios",
        ),
        BottomNavigationBarItem(
          activeIcon: GestureDetector(
            onTap: (() => onChangePageIndex(2)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ThemeColors.card,
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(ThemeIcons.moon),
            ),
          ),
          icon: GestureDetector(
            onTap: (() => onChangePageIndex(2)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(ThemeIcons.moon),
            ),
          ),
          label: "Sobre o dev",
        ),
      ],
    );
  }
}
