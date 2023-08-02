import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/constants/vars.dart';
import 'package:good_rx/provider/aut_provider.dart';
import 'package:good_rx/utils/utils.dart';
import 'package:good_rx/views/getstarted/signup_screen.dart';
import 'package:good_rx/views/homescreen/home_screen.dart';
import 'package:good_rx/views/homescreen/profile_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class OTPScreen extends StatefulWidget {
  String verificationId;
  OTPScreen({super.key, required this.verificationId});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String? otpCode;
  late final Future<LottieComposition> _composition;

  @override
  void initState() {
    super.initState();

    _composition = AssetLottie('assets/lottie/data.json').load();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        Provider.of<AuthProvider>(context, listen: true).isLoading;
    return Scaffold(
      body: SafeArea(
        child: isLoading == true
            ? Center(
                child: CircularProgressIndicator(
                  color: Vars.mainYellow,
                ),
              )
            : Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      Container(
                          width: 400,
                          height: 200,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.purple.shade50),
                          child: FutureBuilder<LottieComposition>(
                            future: _composition,
                            builder: (context, snapshot) {
                              var composition = snapshot.data;
                              if (composition != null) {
                                return Lottie(composition: composition);
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Verify it's you ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "We sent a code to (850) 333-255. Enter the 6-digit code below ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      OtpTextField(
                        borderColor: Colors.black,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        cursorColor: Colors.transparent,
                        enabledBorderColor: Colors.transparent,
                        focusedBorderColor: Colors.transparent,
                        numberOfFields: 6,
                        fillColor: Colors.white,
                        filled: true,
                        onSubmit: (value) {
                          setState(() {
                            otpCode = value;
                          });
                          print(otpCode);
                        },
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
                                    print(otpCode);

                                    if (otpCode != null) {
                                      verifyOtp(context, otpCode!);
                                    } else {
                                      showSnackBar(
                                          context, "Enter 6-Digit code");
                                    }
                                  },
                                  color: const Color(0xFFFAE684),
                                  textColor: Colors.black,
                                )),
                            SizedBox(
                                width: double.infinity,
                                child: CustomButton(
                                  text: "Resend Code",
                                  onPressed: () {},
                                  color: Colors.white,
                                  textColor: Colors.blue,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  //verify otp
  void verifyOtp(BuildContext context, String userOtp) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.verifyOtp(
        context: context,
        verificationId: widget.verificationId,
        userOtp: userOtp,
        onSuccess: () {
          //checking whether user exists in the db
          authProvider.checkExistingUser().then((value) async {
            if (value == true) {
              //user exist in our app
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route) => false);
            } else {
              //New user
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                  (route) => false);
            }
          });
        });
  }
}
