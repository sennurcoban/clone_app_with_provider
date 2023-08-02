import 'package:flutter/material.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/views/getstarted/payment_screen.dart';

class GoldPlanScreen extends StatefulWidget {
  const GoldPlanScreen({super.key});

  @override
  State<GoldPlanScreen> createState() => _GoldPlanScreenState();
}

class _GoldPlanScreenState extends State<GoldPlanScreen> {
  String gender = "male";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   actions: const [
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Icon(Icons.close),
        //     )
        //   ],
        // ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const Text("Step 3 of 5"),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Choose your Gold plan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Choose the plan that's right for you"),
              const SizedBox(
                height: 15,
              ),
              Card(
                child: RadioListTile(
                  isThreeLine: true,
                  secondary: const Text(
                    "0.00",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: const Text(
                    "Individual",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("1 person"),
                  value: "male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                child: RadioListTile(
                  isThreeLine: true,
                  secondary: const Text(
                    "0.00",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: const Text(
                    "Family",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Up to 6 people (or pets)"),
                  value: "female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("* 0.00 payment for the first 30 days only Cancel anytime."),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                        text: "Next",
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen()));
                        },
                        color: const Color(0xFFFAE684),
                        textColor: Colors.black)),
              ),
              const Spacer()
              // Card(
              //     child: ListTile(
              //   leading: Radio(value: value, groupValue: groupValue, onChanged: onChanged),
              //   title: Text("Individual"),
              //   subtitle: Text("1 person"),
              //   trailing: Text("sag"),
              //   isThreeLine: true,
              // ))
            ],
          ),
        ),
      ),
    );
  }
}
