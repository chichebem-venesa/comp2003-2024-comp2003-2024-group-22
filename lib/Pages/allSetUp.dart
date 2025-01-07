import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Disable debug banner
    home: AllSetUp(),
  ));
}

class AllSetUp extends StatefulWidget {
  AllSetUp({super.key});

  @override
  AllSetUpState createState() => AllSetUpState();
}

class AllSetUpState extends State<AllSetUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'All Set Up',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'LeagueSpartan',
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F85B2),
              ),
            ),
            const SizedBox(height: 50),

            // Image
            SizedBox(
              height: 400,
              child: Image.asset('lib/assets/Images/Equality.png'), // Correct image path
            ),

            // Button to the main menu

              SizedBox(height: 50),

              Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle register button press
                  print('Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF5A895),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                ),
                child: const Text(
                  'Take Me To The Main Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
             ),

            SizedBox(height: 60),
            // User info text
            Text(
              'You can change your accessibility needs in settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'LeagueSpartan',
                color: Color(0xFF1F85B2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
