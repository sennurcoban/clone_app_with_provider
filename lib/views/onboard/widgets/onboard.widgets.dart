import 'package:flutter/material.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/provider/aut_provider.dart';
import 'package:good_rx/views/getstarted/signup_screen.dart';
import 'package:good_rx/views/initial/email_verify_screen.dart';
import 'package:good_rx/views/homescreen/register_screen.dart';
import 'package:provider/provider.dart';

class OnboardingWidgets {
  static Widget headerDescWidget(
      BuildContext context, AuthProvider authProvider) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          headerTextWidget(),
          descSubtitleWidget(),
          termsCondiscTextWidget(context),
          createButtonWidget(authProvider, context),
          ignoreButtonWidget(context),
        ],
      ),
    );
  }

  static Widget ignoreButtonWidget(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: CustomButton(
            text: "No, thanks",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterScreen()));
            },
            color: Colors.white,
            textColor: Colors.blue));
  }

  static Widget createButtonWidget(
      AuthProvider authProvider, BuildContext context) {
    final authprovider = Provider.of<AuthProvider>(context, listen: false);
    return SizedBox(
        width: double.infinity,
        child: CustomButton(
          onPressed: () async {
            if (authProvider.isSignedIn == true) {
              await authProvider.getDataFromSp().whenComplete(() =>
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                      (route) => false));
            } else {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
              );
            }
          },
          text: "Create your free account",
          color: const Color(0xFFFAE684),
          textColor: Colors.black,
        ));
  }

  static Widget termsCondiscTextWidget(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
              text:
                  "By continuing to use the mobile app, you agree to GoodRx's ",
              style: Theme.of(context).textTheme.bodySmall,
              children: [
                const TextSpan(
                    text: 'Terms ', style: TextStyle(color: Colors.blue)),
                TextSpan(
                    text: "and",
                    style: Theme.of(context).textTheme.bodySmall,
                    children: const [
                      TextSpan(
                          text: " Privacy Policy",
                          style: TextStyle(color: Colors.blue))
                    ]),
              ]),
        ));
  }

  static Widget descSubtitleWidget() => const Text(
        "Compare prices, find Free coupons, and save up to 80% on your prescriptions",
        textAlign: TextAlign.center,
      );

  static Widget headerTextWidget() {
    return const Text(
      "Welcome to GoodRx!",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }
}
