import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'usertype_page.dart';

void main() {
  runApp(ProctorlyApp());
}


class ProctorlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proctorly',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProctorlyScreen(),
    );
  }
}

class ProctorlyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF8F0), // Light greenish background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Image
              Image.asset(
                'assets/logo.png', // Replace with actual logo path
                height: 100,
              ),
              SizedBox(height: 20),

              // Welcome Text
              Text(
                'Welcome to Proctorly!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),

              // Description Text
              Text(
                'Your journey to secure, seamless, and efficient online examinations starts here. '
                    'Get ready to experience a new standard in testing, where integrity meets innovation.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 40),

              // "Get Started" Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Login Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Dark button color
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Get Started >>',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
