import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/generics/constants/theme_colors.dart';

class AdminProfileWidget extends StatelessWidget {
  const AdminProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/men.png'),
              ),
            ),
            const SizedBox(height: 20),

            // Name
            const Center(
              child: Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Email
            Column(
              children: [
                Center(
                  child: Text(
                    'johndoe@example.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            const Text(
              'Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Phone: +1234567890',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 5),
            const Text(
              'Address: 123, Flutter Street, City XYZ',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 20),

            // Update Details Button
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: ThemeColors.kButtonColor,
                ),
                child: const Text(
                  'Update Details',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
