import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  final String phoneNumber;
  const OTPScreen({super.key, required this.phoneNumber});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String otpCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.phoneNumber,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Enter the verification code sent to your mobile number.'),
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: Pinput(
              length: 6,
              onChanged: (value) {
                setState(() {
                  otpCode = value;
                });
              },
              onCompleted: (value) {
                // validate the OTP code
              },
            ),
          ),
        ],
      ),
    );
  }
}
