import 'package:flutter/material.dart';
import '../components/MyTextField.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,  // Optional: Disable debug banner
    home:  RegistrationPage(),
  ));
}

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  //Register user method
  void registerUser() {}

  //text editing controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final dateofbirthController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            // Top Image
            SizedBox(
              height: 200,
              child: Image.asset('assets/high_five.png'), // Replace with your image
            ),

            const Text(
              'COMMUNITY MANAGER',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const Text(
              'PLYMOUTH',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF1976D2),
              ),
            ),

            const SizedBox(height: 20),
            //username
            MyTextField(
                controller: usernameController,
                labelText: 'Username',
                hintText: 'Enter Your Username',
                obscureText: false),

            const SizedBox(height: 10),

            // Email
            MyTextField(
                controller: emailController,
                labelText: 'Email',
                hintText: 'Enter Your Email',
                obscureText: false),

            const SizedBox(height: 10),

            // Password
            MyTextField(controller: passwordController,
                labelText: 'Password',
                hintText: 'Password',
                obscureText: true),

            const SizedBox(height: 10),

            // Confirm Password
            MyTextField(controller: confirmController,
                labelText: 'Confirm Password',
                hintText: 'Repeat Password',
                obscureText: true),

            const SizedBox(height: 10),

            // Date of Birth
            MyTextField(controller: dateofbirthController,
                labelText: 'Date of Birth',
                hintText: 'Enter your Date of Birth',
                obscureText: false),

            const SizedBox(height: 10),

            // Register Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle register button press
                  print('Register Button Pressed');
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF5A895),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(350,50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                ),
                child: const Text('REGISTER',
                    style:
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
