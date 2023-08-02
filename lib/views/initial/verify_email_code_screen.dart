// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/components/get_more_screen.dart';

class EmailVerifyCodeScreen extends StatefulWidget {
  const EmailVerifyCodeScreen({super.key});

  @override
  State<EmailVerifyCodeScreen> createState() => _EmailVerifyCodeScreenState();
}

class _EmailVerifyCodeScreenState extends State<EmailVerifyCodeScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailTextCtrl = TextEditingController();

  final TextEditingController phoneTextCtrl = TextEditingController();

  final ValueNotifier<bool> isChanged = ValueNotifier(false);
  // We set save button to enable or disable by this
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: EmailVerifyCodeContent(
            step: "Step 2 of 2",
            title: "One last step! Please check your email",
            subtitle: "To continue, please enter the 6-digit code in the email we just sent to mobbin.cms@gmail.com ",
          ),
        ),
      ),
    );
  }
}

class EmailVerifyCodeContent extends StatelessWidget {
  String? step;
  String? title;
  String? subtitle;
  EmailVerifyCodeContent({
    Key? key,
    this.step,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 35,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(step!),
            const SizedBox(
              height: 15,
            ),
            Text(
              title!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(subtitle!),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Text("Not you ? "),
                //TextButton(onPressed: () {}, child: const Text("Log in")),
                RichText(
                    text: TextSpan(
                        text: ' Change email address',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {}))
              ],
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const GetMoreWithScreen()));
                    },
                    color: const Color(0xFFFAE684),
                    textColor: Colors.black,
                  )),
              SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: "Resend Code",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EmailVerifyCodeScreen()));
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Need help ?"),
            //TextButton(onPressed: () {}, child: const Text("Log in")),
            RichText(
                text: TextSpan(
                    text: 'Contact us',
                    style: const TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()..onTap = () {}))
          ],
        ),
        const Spacer()
      ],
    );
  }
}
