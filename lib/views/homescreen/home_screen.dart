import 'package:dotted_border/dotted_border.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:good_rx/components/saved_coupons_screen.dart';
import 'package:good_rx/provider/aut_provider.dart';
import 'package:good_rx/views/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
        final _auth = Provider.of<AuthProvider>(context, listen: false);

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 170,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(153, 220, 217, 217),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/lottie/smallstars.png"),
                                const Text(
                                  "GOLD CARD",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 53, 128, 189)),
                                ),
                                IconButton(
                                    onPressed: () async {
                                      final SharedPreferences prefs =
                                          await SharedPreferences.getInstance();
                                      prefs.setBool("isUserActive", false);
                                      await _auth.userSignOut();
                                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> SplashScreen()), (route) => false);
                                    },
                                    icon: Icon(Icons.logout_outlined))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Hello Jovin",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text("Welcome to GoodRx Gold!")),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    // semanticsLabel: ColorAndText.titleOne,
                    "How can we help you?",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 1; i < 6; i++)
                        Container(
                          width: size.width * .4,
                          height: size.height * .19,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const SavedCouponsScreen()));
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/categories/$i.png"),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        const SavedCouponsScreen()));
                                          },
                                          icon: const Icon(Icons.arrow_forward),
                                          color: const Color.fromARGB(
                                              255, 53, 128, 189))
                                    ],
                                  ),
                                ),
                                const Text(
                                  "Chat with a \ndoctor online",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 53, 128, 189)),
                                )
                              ]),
                        )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    // semanticsLabel: ColorAndText.titleOne,
                    "Home Delivery prescriptions",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(20),
                      dashPattern: const [2, 2],
                      color: Colors.grey,
                      strokeWidth: 2,
                      child: Center(
                          child: SizedBox(
                        height: 150,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset("assets/categories/3.png"),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Home Delivery prescriptions will show up\n here after you place your first order.",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                      ))),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(
                    // vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    // semanticsLabel: ColorAndText.titleOne,
                    "Saved Coupons",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.bookmark,
                                size: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("0 saved"),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const SavedCouponsScreen()));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 17,
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.medical_services_outlined,
                ),
                label: "Care"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "Account")
          ],
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
