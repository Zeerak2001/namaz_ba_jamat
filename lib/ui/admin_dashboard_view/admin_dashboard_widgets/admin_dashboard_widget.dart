import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/ui/admin_dashboard_view/admin_dashboard_widgets/timing_card.dart';

import 'admin_dashboard_header.dart';

class AdminDashboardWidget extends StatelessWidget {
  const AdminDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 2,
          child: AdminDashboardHeader(),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 7,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TimePickerCard(
                        namazTime: 'Fajar Time',
                      ),
                    ),
                    Expanded(
                      child: TimePickerCard(
                        namazTime: 'Duhr Time',
                      ),
                    ),
                    Expanded(
                      child: TimePickerCard(
                        namazTime: 'Asr Time',
                      ),
                    ),
                    Expanded(
                      child: TimePickerCard(
                        namazTime: 'Maghreb Time',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TimePickerCard(
                        namazTime: 'Isha Time',
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      TimePickerCard(
                        namazTime: 'Friday Prayer',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
