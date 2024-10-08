import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/ui/admin_management_view/admin_management_widget/admin_profile_widget.dart';
import 'package:namaz_ba_jamat/widgets/side_menu/side_menu.dart';

class AdminProfileScreen extends StatelessWidget {
  const AdminProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              child: SideMenu(),
            ),
          ),
          Expanded(
            flex: 7,
            child: AdminProfileWidget(),
          ),
          /* Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),*/
        ],
      )),
    );
  }
}
