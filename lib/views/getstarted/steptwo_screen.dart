import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/constants/vars.dart';
import 'package:good_rx/provider/aut_provider.dart';
import 'package:good_rx/views/getstarted/goldplan_screen.dart';
import 'package:provider/provider.dart';

class StepTwoScreen extends StatefulWidget {
  const StepTwoScreen({super.key});

  @override
  State<StepTwoScreen> createState() => _StepTwoScreenState();
}

class _StepTwoScreenState extends State<StepTwoScreen> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: StepTwoContent(
            step: "Step 2 of 5",
            title: "Tell us your address",
            description: "Where should we send your personalized Gold card? ",
            address: "Street Address",
            aptSuite: "Apt/Suite (optional)",
            city: "City",
            state: "State",
            zipcode: "Zip code",
          ),
        ),
      ),
    );
  }
}

class StepTwoContent extends StatelessWidget {
  const StepTwoContent({
    super.key,
    this.aptSuite,
    this.city,
    this.state,
    this.zipcode,
    this.address,
    this.step,
    this.description,
    this.title,
  });

  final String? step,
      aptSuite,
      city,
      state,
      address,
      description,
      title,
      zipcode;

  @override
  Widget build(BuildContext context) {
    final TextEditingController addressController = TextEditingController();
    final TextEditingController appSuiteController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController stateController = TextEditingController();
    final TextEditingController zipCodeController = TextEditingController();

    return Column(
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
                    icon: const Icon(Icons.close_outlined)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(step!),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(description!),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: addressController,
          decoration: InputDecoration(
            hintText: address,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xFFFAE684), width: 2.0),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: appSuiteController,
          decoration: InputDecoration(
            hintText: aptSuite,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xFFFAE684), width: 2.0),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: cityController,
          decoration: InputDecoration(
            hintText: city,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xFFFAE684), width: 2.0),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: stateController,
                decoration: InputDecoration(
                  hintText: state,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Color(0xFFFAE684), width: 2.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                controller: zipCodeController,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(6)
                ],
                decoration: InputDecoration(
                  hintText: zipcode,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Color(0xFFFAE684), width: 2.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: double.infinity,
              child: CustomButton(
                  text: "Next",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GoldPlanScreen()));
                  },
                  color: Vars.mainYellow,
                  textColor: Colors.black)),
        ),
        const Spacer()
      ],
    );
  }
}
