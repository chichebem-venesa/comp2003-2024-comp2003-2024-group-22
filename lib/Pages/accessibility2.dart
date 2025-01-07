import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Disable debug banner
    home: AccessibilityForm2(),
  ));
}

class AccessibilityForm2 extends StatefulWidget {
  AccessibilityForm2({super.key});

  @override
  AccessibilityForm2State createState() => AccessibilityForm2State();
}

class AccessibilityForm2State extends State<AccessibilityForm2> {
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
      body: SafeArea(child:
      Padding(
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
              child: Image.asset('lib/assets/Images/Vector.png'), // Update to actual path
            ),

            const SizedBox(height: 20),
            const Text(
              'Do you have any mobility needs?',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
                height: 1.5,
                fontFamily: 'LeagueSpartan',
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
                      title: const Text('Visually Impaired'),
                    ),
                    RadioListTile<int?>(
                      value: 2,
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: setSelectedRadio,
                      title: const Text('Hearing Loss or Deafness'),
                    ),
                    RadioListTile<int?>(
                      value: 3,
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: setSelectedRadio,
                      title: const Text('Prefer Not To Say'),
                    ),
                    RadioListTile<int?>(
                      value: 4,
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: setSelectedRadio,
                      title: const Text('No'),
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
                        child: Image.asset('lib/assets/Images/help.svg'), // Update path
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // PREVIOUS button functionality
                    print('Selected Radio Option: $selectedRadio');
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        child: Image.asset('lib/assets/Images/arrow_back_ios.png'), // Update path
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Previous',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF2085B2),
                          fontFamily: 'LeagueSpartan',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // NEXT button functionality
                    print('Selected Radio Option: $selectedRadio');
                  },
                  child: Row(
                    children: [
                      const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF2085B2),
                          fontFamily: 'LeagueSpartan',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        height: 40,
                        child: Image.asset('lib/assets/Images/arrow_forward_ios.png'), // Update path
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );

  }
}
