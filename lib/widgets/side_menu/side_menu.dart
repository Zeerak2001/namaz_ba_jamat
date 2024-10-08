import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/generics/constants/font_sizes.dart';
import 'package:namaz_ba_jamat/generics/constants/theme_colors.dart';
import 'package:namaz_ba_jamat/ui/admin_dashboard_view/admin_dashboard_screen/admin_dashboard_screen.dart';
import 'package:namaz_ba_jamat/ui/admin_management_view/admin_management_screens/admin_profile_screen.dart';

import 'side_menu_data/side_menu_data.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (context, index) => buildMenuEntry(data, index)),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        color:
            isSelected ? ThemeColors.kButtonSelectionColor : Colors.transparent,
      ),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;

          if (data.menu[index].title == 'Profile') {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AdminProfileScreen()),
            );
          } else if (data.menu[index].title == 'Dashboard') {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AdminDashboardScreen()),
            );
          }
        }),
        child: Row(
          children: [
            Icon(
              data.menu[index].icon,
              color: isSelected ? Colors.black : Colors.grey,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              data.menu[index].title,
              style: FontSizes.size16SemiBold(
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
