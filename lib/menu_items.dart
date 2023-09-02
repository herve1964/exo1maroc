import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  MenuItem({required this.title, required this.icon, required this.onTap});
}

List<MenuItem> menuItems = [
  MenuItem(
    title: 'Page 1',
    icon: Icons.pageview,
    onTap: () {
      // Ajoutez ici la logique pour naviguer vers la page 1
    },
  ),
  MenuItem(
    title: 'Page 2',
    icon: Icons.pageview,
    onTap: () {
      // Ajoutez ici la logique pour naviguer vers la page 2
    },
  ),
  MenuItem(
    title: 'Page 3',
    icon: Icons.pageview,
    onTap: () {
      // Ajoutez ici la logique pour naviguer vers la page 3
    },
  ),
  MenuItem(
    title: 'Page 4',
    icon: Icons.pageview,
    onTap: () {
      // Ajoutez ici la logique pour naviguer vers la page 4
    },
  ),
];