import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/constants/vars.dart';
import 'package:good_rx/provider/aut_provider.dart';
import 'package:good_rx/views/otp_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with TickerProviderStateMixin {
  final TextEditingController phoneController = TextEditingController();
  late final Future<LottieComposition> _composition;

  @override
  void initState() {
    super.initState();

    _composition = AssetLottie('assets/lottie/data.json').load();
  }

  Country selectedCountry = Country(
    phoneCode: "90",
    countryCode: "TR",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Turkey",
    example: "Turkey",
    displayName: "Türkiye",
    displayNameNoCountryCode: "TR",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(TextPosition(offset: phoneController.text.length));
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back),
                  )),
              Container(
                  width: 400,
                  height: 200,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.purple.shade50),
                  child: FutureBuilder<LottieComposition>(
                    future: _composition,
                    builder: (context, snapshot) {
                      var composition = snapshot.data;
                      if (composition != null) {
                        return Lottie(composition: composition);
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                "What's your mobile phone number? ",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Make sure you're ready to receive texts so we can send a varification code. ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                cursorColor: Colors.purple,
                controller: phoneController,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                onChanged: (value) {
                  setState(() {
                    phoneController.text = value;
                  });
                },
                decoration: InputDecoration(
                    hintText: "Mobile Phone Number  ",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.grey.shade600),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black12)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black12)),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                            context: context,
                            countryListTheme: const CountryListThemeData(bottomSheetHeight: 550),
                            onSelect: (value) {
                              setState(() {
                                selectedCountry = value;
                              });
                            },
                          );
                        },
                        child: Text(
                          "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                          style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    suffixIcon: phoneController.text.length > 9
                        ? Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Vars.mainYellow),
                            child: const Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : null),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                      text: "Send verification code",
                      onPressed: () => sendPhoneNumber(),
                      color: Vars.mainYellow,
                      textColor: Colors.black))
            ],
          ),
        ),
      )),
    );
  }

  void sendPhoneNumber() {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    authProvider.signInWithPhone(context, "+${selectedCountry.phoneCode}$phoneNumber");
  }
}
