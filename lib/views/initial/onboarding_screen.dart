import 'package:flutter/material.dart';
import 'package:good_rx/provider/aut_provider.dart';
import 'package:good_rx/views/initial/email_verify_screen.dart';
import 'package:good_rx/views/homescreen/register_screen.dart';
import 'package:good_rx/views/onboard/widgets/onboard.widgets.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget with OnboardingWidgets {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/onboardingscreen/onboardnew.png"),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  OnboardingWidgets.headerDescWidget(context, _authProvider),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}