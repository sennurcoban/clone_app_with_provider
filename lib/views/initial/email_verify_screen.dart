import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/components/custom_textformfield.dart';
import 'package:good_rx/constants/vars.dart';
import 'package:good_rx/views/homescreen/login_screen.dart';
import 'package:good_rx/views/homescreen/register_screen.dart';
import 'package:good_rx/views/initial/verify_email_code_screen.dart';

class EmailVerifyScreen extends StatelessWidget {
  EmailVerifyScreen({super.key});

  var textEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Step 1 of 2"),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Get Started",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                      "Recieve price alerts, savings, and news on your prescriptions. "),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have a GoodRx account ?"),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LoginScreen()));
                            },
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ])
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormFieldWidget(
                textEmailController: textEmailController,
                hintText: "Email adress",
              ),
              TextButton(
                  onPressed: () {},
                  child: Text.rich(
                    TextSpan(
                        text:
                            "By continuing to use the mobile app, you agree to GoodRx's ",
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          const TextSpan(
                              text: 'Terms ',
                              style: TextStyle(color: Colors.blue)),
                          TextSpan(
                              text: "and",
                              style: Theme.of(context).textTheme.bodySmall,
                              children: const [
                                TextSpan(
                                    text: " Privacy Policy",
                                    style: TextStyle(color: Colors.blue))
                              ]),
                        ]),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                        width: double.infinity,
                        child: CustomButton(
                            text: "Next",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EmailVerifyCodeScreen()));
                            },
                            color: Vars.mainYellow,
                            textColor: Colors.black)),
                    SizedBox(
                        width: double.infinity,
                        child: CustomButton(
                            text: "Use my mobile phone number",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen()));
                            },
                            color: Colors.white,
                            textColor: Colors.blue)),
                  ],
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
