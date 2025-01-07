import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Disable debug banner
    home: WhyWeAsk(),
  ));
}

class WhyWeAsk extends StatefulWidget {
  WhyWeAsk({super.key});

  @override
  WhyWeAskState createState() => WhyWeAskState();
}

class WhyWeAskState extends State<WhyWeAsk> {
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
            const SizedBox(height: 50),
            const Text(
              'Why do we ask?',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'LeagueSpartan',
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F85B2),
              ),
            ),
            const SizedBox(height: 20), // Spacing between title and content
            SizedBox(
              height: 384,
              width: 329,
              child: Column(
                children: const [
                  Text(
                    'We ask you these questions because this information will allow us to show you activities that are more suited towards you and your needs! We believe all people should be celebrated, so by answering our accessibility questions, we can ensure that you are represented and are able to partake in these activities.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'LeagueSpartan',
                      color: Colors.black,
                      height: 1.5, // Line height for better readability
                    ),
                  ),
                  SizedBox(height: 20), // Spacing between the paragraphs
                  Text(
                    'Note: You may change your accessibility needs at any time in your profile.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'LeagueSpartan',
                      color: Colors.grey,
                      height: 1.5, // Line height for better readability
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30), // Spacing before the button
            ElevatedButton(
              onPressed: () {
                // Button press action
                print('I UNDERSTAND button pressed');
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
                'I UNDERSTAND',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
