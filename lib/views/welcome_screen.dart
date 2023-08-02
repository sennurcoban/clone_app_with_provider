import 'package:flutter/material.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/views/pharmacy_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20, top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close_outlined)),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome to",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      "GoodRx Gold, Jovin",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/lottie/stars.png',
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
                "Your Gold membership is now active! Start by searching for your pharmacy so we can find you the lowest price."),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                width: double.infinity,
                child: CustomButton(
                    text: "Search for my pharmacy",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PharmacyScreen()));
                    },
                    color: const Color(0xFFFAE684),
                    textColor: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "At the pharmacy? ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text("Show your Gold card to immediately start saving on your prescriptions. "),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const GoldCardDetailScreen()));
                    showModalBottomSheet<void>(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius:
                                  const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))),
                          height: kToolbarHeight * 50,
                          // color: Colors.black87,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.phone),
                                          color: Colors.white,
                                        ),
                                        const Text(
                                          "Call Gold Support",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.close_outlined),
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 200,
                                    width: 300,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: const [
                                                Text("GoodRx"),
                                                Text(
                                                  " Gold",
                                                  style: TextStyle(color: Color(0xFFFAE684)),
                                                )
                                              ],
                                            ),
                                            const Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "Jovin Liew",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                const Text("BIN"),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: const [
                                                    Text("600428"),
                                                    Icon(Icons.person, color: Colors.transparent)
                                                  ],
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                const Text("PCN"),
                                                Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                                                  Text("10634"),
                                                  Icon(Icons.person, color: Colors.transparent)
                                                ])
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                const Text("Group"),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: const [
                                                    Text("GOLD"),
                                                    Icon(Icons.person, color: Colors.transparent)
                                                  ],
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                const Text("MEMBER ID"),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: const [
                                                    Text("JR74AV93"),
                                                    Icon(Icons.person, color: Colors.transparent)
                                                  ],
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                const Text("PERSON CODE"),
                                                Row(
                                                  children: const [
                                                    Text("01"),
                                                    Icon(
                                                      Icons.person,
                                                      color: Color(0xFFFAE684),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  "Show this to your pharmacist to receive the GoodRx Gold price on your prescription",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  // child: Obx(
                  //   () => Text("LOGIN: ${loginController.count}"),
                  // ),
                  child: const Text(
                    "View my Gold card",
                    style: TextStyle(color: Colors.blue),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/lottie/newgoldcard.png",
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
