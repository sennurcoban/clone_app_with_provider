import 'package:flutter/material.dart';

class GoldCardDetailScreen extends StatelessWidget {
  const GoldCardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
                  const Text("Call Gold Support")
                ],
              ),
              const Icon(Icons.close_outlined)
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [Text("GoodRx Gold")],
                  ),
                  const Text("Jovin Liew"),
                  Row(
                    children: const [Text("BIN"), Text("600428")],
                  ),
                  Row(
                    children: const [Text("PCN"), Text("10634")],
                  ),
                  Row(
                    children: const [Text("Group"), Text("GOLD")],
                  ),
                  Row(
                    children: const [Text("MEMBER ID"), Text("JR74AV93")],
                  ),
                  Row(
                    children: const [Text("PERSON CODE"), Text("01")],
                  ),
                ],
              ),
            ),
          ),
          const Text("Show this to your pharmacist to receive the GoodRx Gold price on your prescription")
        ],
      ),
    );
  }
}
