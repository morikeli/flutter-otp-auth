import 'package:flutter/material.dart';
import 'package:flutter_phone_auth/screens/mobile_number.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height:
                      12.0), // this SizedBox places the image at the center of the screen
              Image.asset('assets/img/dev.gif'),
              Column(
                children: [
                  Text(
                    'Welcome to authy app',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Verify your mobile no. using Firebase and Flutter!',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.blue.shade800),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        textStyle: WidgetStatePropertyAll(
                          TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        // when pressed, replace the onboarding screen with OTP screen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MobileNumberScreen()),
                        );
                      },
                      child: Text(
                        'Get started',
                        style: TextStyle(color: Colors.white),
                      ),
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
