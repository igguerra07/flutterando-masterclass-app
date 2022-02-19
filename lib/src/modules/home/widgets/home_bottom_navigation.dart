import 'package:flutter/material.dart';
import 'package:masterclass/theme/icons.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.transparent,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Image.asset(ThemeIcons.target),
            onPressed: () => {},
          ),
          label: "Atividades",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: SizedBox(
              child: Image.asset(ThemeIcons.github),
            ),
            onPressed: () => {},
          ),
          label: "Repositórios",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.person,
              size: 36,
            ),
          ),
          label: "Sobre o dev",
        ),
      ],
    );
  }
}
