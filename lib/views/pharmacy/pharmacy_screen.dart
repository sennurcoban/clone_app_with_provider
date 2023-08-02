import 'package:flutter/material.dart';
import 'package:good_rx/views/pharmacy/pharmacy_detail_screen.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: TextFormField(
                //         decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Pharmacy Name'),
                //       ),
                //     ),
                //     TextButton(onPressed: () {}, child: const Text("CANCEL"))
                //   ],
                // ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                        child: TextFormField(
                          decoration: const InputDecoration(hintText: "Pharmacy name",  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide: const BorderSide(color: Color(0xFFFAE684), width: 2.0),),),
                        ),
                      ),
                    ),
                    const Text("CANCEL")
                  ],
                ),
                const Divider(
                  color: Colors.black54,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.blue[900]),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "sssssssssssssssssssssssssss",
                          style: TextStyle(color: Colors.blue[900]),
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
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Nearby GoldRx Gold pharmacies",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return ListTile(
                        isThreeLine: true,
                        leading: Container(
                          height: 30,
                          width: 30,
                          margin: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                          child: const Icon(
                            Icons.abc,
                            color: Colors.white,
                          ),
                        ),
                        title: Text("Safeway $index"),
                        subtitle: const Text("298 King St \nSan Francisco 94107 \n0.41 mi"),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PharmacyDetailScreen(),
                                  ));
                            },
                            icon: const Icon(Icons.arrow_forward_ios_outlined)),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
