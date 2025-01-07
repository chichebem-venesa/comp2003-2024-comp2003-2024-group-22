import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Disable debug banner
    home: AccessibilityForm1(),
  ));
}

class AccessibilityForm1 extends StatefulWidget {
  AccessibilityForm1({super.key});

  @override
  AccessibilityForm1State createState() => AccessibilityForm1State();
}

class AccessibilityForm1State extends State<AccessibilityForm1> {
  int? selectedRadio = 0;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  void setSelectedRadio(int? val) {
    setState(() {
      selectedRadio = val;
    });
  }

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
              'Accessibility Needs',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'LeagueSpartan',
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F85B2),
              ),
            ),
            const SizedBox(height: 20),

            // Image
            SizedBox(
              height: 200,
              child: Image.asset('assets/Images/Wheelchair.png'), // Update to actual path
            ),

            const SizedBox(height: 20),
            const Text(
              'Do you have any mobility needs?',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
                height: 1.5,
                fontFamily: 'LeagueSpartan', // Font family name
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Elevated Box for Radio Buttons
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile<int?>(
                      value: 1,
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: setSelectedRadio,
                      title: const Text('Wheelchair Friendly'),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    ),
                    RadioListTile<int?>(
                      value: 2,
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: setSelectedRadio,
                      title: const Text('Mobility Walker Friendly'),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    ),
                    RadioListTile<int?>(
                      value: 3,
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: setSelectedRadio,
                      title: const Text('Limited Standing Ability'),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    ),
                    RadioListTile<int?>(
                      value: 4,
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: setSelectedRadio,
                      title: const Text('Prefer Not To Say'),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    ),
                    RadioListTile<int?>(
                      value: 5,
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: setSelectedRadio,
                      title: const Text('No'),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Help Section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Help button functionality
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        child: Image.asset('lib/assets/Images/help.png'), // Update path
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Why do we ask?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // NEXT Section
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF2085B2),
                    fontFamily: 'LeagueSpartan',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    // NEXT button functionality
                    print('Selected Radio Option: $selectedRadio');
                  },
                  child: SizedBox(
                    height: 40,
                    child: Image.asset('lib/assets/Images/arrow_forward_ios.png'), // Update path
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
