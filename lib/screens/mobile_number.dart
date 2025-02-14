import 'package:flutter/material.dart';
import 'package:flutter_phone_auth/screens/otp_screen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  bool enableGetOTPBtn = false;
  String phoneNumber = '';
  
  getOtp() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OTPScreen(phoneNumber: phoneNumber)),
    );
  }
  // void _onPhoneNumberChanged(PhoneNumber number) {
  //   setState(() {
  //     enableGetOTPBtn = false;
  //     // enableGetOTPBtn = number.phoneNumber != null && number.phoneNumber!.isNotEmpty;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Enter your phone number'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: Column(
          children: [
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'Testuser ',
                style: TextStyle(color: Colors.blue.shade500, fontSize: 13.0),
                children: [
                  TextSpan(
                    text:
                        'needs to verify his mobile no. Carrier charges may apply.',
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 13.0),
                  ),
                ],
              ),
            ),

            // phone number input field
            // Container adds margin on the x-axis (left & right)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: InternationalPhoneNumberInput(
                formatInput: true,
                inputDecoration: InputDecoration(
                  hintText: 'Mobile number',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0),
                ),
                onInputChanged: (value) {
                  if (value.phoneNumber != null && value.phoneNumber!.isNotEmpty) {
                    setState(() {
                      enableGetOTPBtn = true;
                      phoneNumber = value.phoneNumber.toString();
                    });
                  } else {
                    setState(() {
                      enableGetOTPBtn = false;
                    });
                  }
                },
                
                selectorConfig: SelectorConfig(
                  leadingPadding: 4.0,
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  useEmoji: true,
                ),
              ),
            ),

            Spacer(),
            // send OTP button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(enableGetOTPBtn ? Colors.blue.shade800 : Colors.grey.shade800),
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
                onPressed: enableGetOTPBtn
                  ?
                  // when pressed, replace the onboarding screen with OTP screen
                  getOtp
                  : null,
                child: Text(
                  'Get OTP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
