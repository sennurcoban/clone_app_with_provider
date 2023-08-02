import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/constants/vars.dart';
import 'package:good_rx/extensions/datetime_extension.dart';
import 'package:good_rx/model/signup_model.dart';
import 'package:good_rx/model/user_model.dart';
import 'package:good_rx/provider/aut_provider.dart';
import 'package:good_rx/utils/utils.dart';
import 'package:good_rx/views/getstarted/steptwo_screen.dart';
import 'package:good_rx/views/homescreen/login_screen.dart';
import 'package:good_rx/views/homescreen/register_screen.dart';
import 'package:good_rx/views/termsandprivacypolicy/termsandprivacypolicy_screen.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SignUpContent(
            step: "Step 1 of 5",
            title: "Let's get started",
            description:
                "As a Gold member, you can access 1,000s of medications for less than 10. ",
            accountCheck: "Already have a Gold account ? ",
            name: "First Name",
            lastName: "Last Name",
            emailAddress: "Email Address",
            birthdate: "Birthdate",
          ),
        ),
      ),
    );
  }
}

class SignUpContent extends StatefulWidget {
  const SignUpContent({
    super.key,
    this.name,
    this.lastName,
    this.emailAddress,
    this.birthdate,
    this.address,
    this.step,
    this.description,
    this.title,
    this.accountCheck,
  });

  final String? step,
      name,
      lastName,
      emailAddress,
      birthdate,
      address,
      description,
      title,
      accountCheck;

  @override
  State<SignUpContent> createState() => _SignUpContentState();
}

class _SignUpContentState extends State<SignUpContent> {
  File? image;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController _date = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
  }

  //for selecting image
  void selectImage() async {
    image = await pickImage(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        Provider.of<AuthProvider>(context, listen: true).isLoading;
    return isLoading == true
        ? Center(
            child: CircularProgressIndicator(
              color: Vars.mainYellow,
            ),
          )
        : Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.step!),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(widget.description!),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(widget.accountCheck!),
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
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: widget.name,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Color(0xFFFAE684), width: 2.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: lastNameController,
                decoration: InputDecoration(
                  hintText: widget.lastName,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Color(0xFFFAE684), width: 2.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: widget.emailAddress,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Color(0xFFFAE684), width: 2.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // TextFormField(
              //   controller: _date,
              //   decoration: InputDecoration(
              //     hintText: widget.birthdate,
              //     border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              //     focusedBorder: const OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(10)),
              //       borderSide: BorderSide(color: Color(0xFFFAE684), width: 2.0),
              //     ),
              //   ),
              //   onTap: () async {
              //     DateTime? pickedDate = await showDatePicker(
              //         context: context, initialDate: DateTime.now(), firstDate: DateTime(2005), lastDate: DateTime(2023));

              //     if (pickedDate != null) {
              //       setState(() {
              //         _date.text = DateFormat('yyyy-MM-dd').format(pickedDate);
              //       });
              //     }
              //   },
              // ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Your name and birthdate must match your prescription. ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> TermsandPrivacyPolicy()), (route) => false);
                  },
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
                child: SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                        text: "Next",
                        onPressed: () => storeData(),
                        color: Vars.mainYellow,
                        textColor: Colors.black)),
              ),
              const Spacer()
            ],
          );
  }

  //store user data to database
  void storeData() async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    SignUpModel signUpModel = SignUpModel(
        firstName: nameController.text.trim(),
        lastName: lastNameController.text.trim(),
        emailAddress: emailController.text.trim(),
        birthdate: DateTime.now(),
        createdAt: "",
        uid: "",
);
        if (image == null) {
          authProvider.saveUserDataToFirebaseWithoutImage(context: context, signUpModel: signUpModel, onSuccess: (){
            authProvider.saveUserDataToSPTwo().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> StepTwoScreen()), (route) => false));
          });
          // authProvider.saveUserDataToFirebaseWithoutImage(context: context, userModel: userModel, profilePic: image!, onSuccess: (){
          //   authProvider.saveUserDataToSP().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> StepTwoScreen()), (route) => false));
          // });
        } else {
          showSnackBar(context, "Something was wrong");
        }
  }
}
