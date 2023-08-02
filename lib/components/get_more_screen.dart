import 'package:flutter/material.dart';
import 'package:good_rx/components/custom_button.dart';
import 'package:good_rx/views/getstarted/signup_screen.dart';

class GetMoreWithScreen extends StatelessWidget {
  const GetMoreWithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 350,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close_outlined,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/lottie/stars.png',
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(children: const [
                    Text(
                      "Get more with",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      "GoodRx Gold",
                      style: TextStyle(color: Colors.amber, fontSize: 25),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "More savings. More perks. \n More back in your pocket. ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(""),
                              Text(
                                "Member benefits",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("106 saved per prescription on average"),
                              Container(
                                height: 30,
                                width: 30,
                                margin: const EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFAE684)),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                          // const Divider(
                          //   height: 10,
                          //   color: Colors.grey,
                          // ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("106 saved per prescription on average"),
                              Container(
                                height: 30,
                                width: 30,
                                margin: const EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFAE684)),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("106 saved per prescription on average"),
                              Container(
                                height: 30,
                                width: 30,
                                margin: const EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFAE684)),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("106 saved per prescription on average"),
                              Container(
                                height: 30,
                                width: 30,
                                margin: const EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFAE684)),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Plans start at only 5.99/mo. Cancel anytime. "),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 44, right: 44, top: 10),
                    child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: CustomButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                          },
                          color: const Color(0xFFFAE684),
                          textColor: Colors.black,
                          text: "Start your free trial today",
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    child: const Text("No thanks "),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                    },
                  ),
                )
              ],
            ),
          )
          // Positioned(
          //   top: 50,
          //   left: 170,
          //   child: Image.asset(
          //     'assets/lottie/stars.png',
          //     color: Colors.amber,
          //   ),
          // ),
          // Positioned(
          //   top: 110,
          //   left: 120,
          //   child: Column(
          //     children: const [
          //       Text(
          //         "Get more with",
          //         style: TextStyle(color: Colors.white, fontSize: 25),
          //       ),
          //       // SizedBox(
          //       //   height: 10,
          //       // ),
          //       Text(
          //         "GoodRx Gold",
          //         style: TextStyle(color: Colors.amber, fontSize: 25),
          //       ),
          //     ],
          //   ),
          // ),
          // const Positioned(
          //   top: 170,
          //   left: 120,
          //   child: Text(
          //     "More savings. More perks. \n More back in your pocket. ",
          //     style: TextStyle(color: Colors.white, fontSize: 15),
          //   ),
          // ),
          // Positioned(
          //     top: 250,
          //     left: 45,
          //     child: Card(
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           children: [
          //             Row(
          //               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 const Text("106 saved per prescription on average"),
          //                 Container(
          //                   height: 30,
          //                   width: 30,
          //                   margin: const EdgeInsets.all(10.0),
          //                   decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFAE684)),
          //                   child: const Icon(
          //                     Icons.done,
          //                     color: Colors.black,
          //                     size: 20,
          //                   ),
          //                 )
          //               ],
          //             ),
          //             // const Divider(
          //             //   height: 10,
          //             //   color: Colors.grey,
          //             // ),
          //             Row(
          //               children: [
          //                 const Text("106 saved per prescription on average"),
          //                 Container(
          //                   height: 30,
          //                   width: 30,
          //                   margin: const EdgeInsets.all(10.0),
          //                   decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFAE684)),
          //                   child: const Icon(
          //                     Icons.done,
          //                     color: Colors.black,
          //                     size: 20,
          //                   ),
          //                 )
          //               ],
          //             ),
          //             Row(
          //               children: [
          //                 const Text("106 saved per prescription on average"),
          //                 Container(
          //                   height: 30,
          //                   width: 30,
          //                   margin: const EdgeInsets.all(10.0),
          //                   decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFAE684)),
          //                   child: const Icon(
          //                     Icons.done,
          //                     color: Colors.black,
          //                     size: 20,
          //                   ),
          //                 )
          //               ],
          //             ),
          //             Row(
          //               children: [
          //                 const Text("106 saved per prescription on average"),
          //                 Container(
          //                   height: 30,
          //                   width: 30,
          //                   margin: const EdgeInsets.all(10.0),
          //                   decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFAE684)),
          //                   child: const Icon(
          //                     Icons.done,
          //                     color: Colors.black,
          //                     size: 20,
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ))
        ],
      ),
    );
  }
}
