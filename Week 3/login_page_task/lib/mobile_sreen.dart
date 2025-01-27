import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Increase this to fit more icons
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 8, // Number of apps or items
          itemBuilder: (context, index) {
            // List of icons to represent apps
            List<IconData> appIcons = [
              Icons.camera_alt,
              Icons.message,
              Icons.photo_album,
              Icons.music_note,
              Icons.gamepad,
              Icons.shopping_cart,
              Icons.map,
              Icons.calendar_today,
            ];

            return Card(
              elevation: 5,
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      appIcons[index], // Display icon based on index
                      size: 40,
                      color: Colors.blue[800],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'App ${index + 1}', // Label for each app
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
