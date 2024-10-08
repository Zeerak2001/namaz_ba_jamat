import 'package:flutter/material.dart';
import '../side_menu_model/side_menu.dart';

class SideMenuData {
  final menu = const <SideMenuModel>[
    SideMenuModel(icon: Icons.home, title: 'Dashboard'),
    SideMenuModel(icon: Icons.person, title: 'Profile'),
    SideMenuModel(icon: Icons.logout, title: 'Logout'),
  ];
}
