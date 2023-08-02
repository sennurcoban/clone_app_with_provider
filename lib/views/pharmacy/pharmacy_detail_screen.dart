import 'package:flutter/material.dart';
import 'package:good_rx/views/homescreen/home_screen.dart';

class PharmacyDetailScreen extends StatelessWidget {
  const PharmacyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_outlined)),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/lottie/smallstars.png"),
                  const Text(" Safeaway is GoodRx Gold pharmacy!")
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "You're all set. Show the pharmacist your digital Gold card to immediately start saving.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12), topRight: Radius.circular(12))),
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
                      child: const Text("View my Gold card"))),

              const Divider(
                color: Colors.black54,
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Compare Gold prices",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    Icon(Icons.location_on, color: Color.fromARGB(255, 53, 128, 189)),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "ssssssssssssss",
                        style: TextStyle(color: Color.fromARGB(255, 53, 128, 189)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(color: Colors.black45),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset("assets/lottie/rxlogo.png"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  "Search for your drug to compare Gold prices and pharmacies",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 53, 128, 189),
                      ),
                      // child: Obx(
                      //   () => Text("LOGIN: ${loginController.count}"),
                      // ),
                      child: const Text(
                        "Search for your drug",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              const Divider(color: Colors.black45),
            ],
          ),
        ),
      ),
    );
  }
}
