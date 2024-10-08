import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/widgets/side_menu/side_menu.dart';

import '../admin_dashboard_widgets/admin_dashboard_widget.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

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
            child: AdminDashboardWidget(),
          ),
          /*Expanded(
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
