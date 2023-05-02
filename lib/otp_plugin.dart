import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPlugin extends StatefulWidget {
  const OtpPlugin({Key? key}) : super(key: key);

  @override
  State<OtpPlugin> createState() => _OtpPluginState();
}

class _OtpPluginState extends State<OtpPlugin> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cleaning_services),
        onPressed: () {
          print("Floating button was pressed.");
          otpController.clear();
        },
      ),
      body: Center(
        child: OTPTextField(
            controller: otpController,
            length: 5,
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldWidth: 45,
            fieldStyle: FieldStyle.box,
            outlineBorderRadius: 15,
            style: const TextStyle(fontSize: 17),
            onChanged: (pin) {
              print("Changed: $pin");
            },
            onCompleted: (pin) {
              print("Completed: $pin");
            }),
      ),
    );
  }
}
