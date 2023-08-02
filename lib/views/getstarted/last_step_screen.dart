import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/views/welcome_screen.dart';

class LastStepScreen extends StatelessWidget {
  const LastStepScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close_outlined))),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Step 5 of 5"),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "One last step! Verify your email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Grab the 6-digit code in the email we just send to mobbin.cms@gmail.com"),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              OtpTextField(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                cursorColor: Colors.transparent,
                enabledBorderColor: Colors.transparent,
                focusedBorderColor: Colors.transparent,
                numberOfFields: 6,
                fillColor: Colors.white,
                filled: true,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                        width: double.infinity,
                        child: CustomButton(
                          text: "Verify",
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
                          },
                          color: const Color(0xFFFAE684),
                          textColor: Colors.black,
                        )),
                    SizedBox(
                        width: double.infinity,
                        child: CustomButton(
                          text: "Resend Code",
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LastStepScreen()));
                          },
                          color: Colors.white,
                          textColor: Colors.blue,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
