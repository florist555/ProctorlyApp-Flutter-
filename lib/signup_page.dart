import 'package:flutter/material.dart';
import 'usertype_page.dart'; // Import the next page

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF8F0),
      body: Center(
        child: SingleChildScrollView(
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

              // Sign up text
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),

              // Email Text Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: UnderlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              // Username Text Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: UnderlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              // Password Text Field
              TextField(
                obscureText: true, // To hide password input
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility), // Icon for show/hide password
                ),
              ),
              SizedBox(height: 20),

              // Confirm Password Text Field
              TextField(
                obscureText: true, // To hide password input
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(height: 20),

              // Sign Up Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the User Type Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserTypePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Sign Up',
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
