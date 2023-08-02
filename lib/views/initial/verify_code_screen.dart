import 'package:flutter/material.dart';
import 'package:good_rx/constants/vars.dart';


class VerifyCodeScreen extends StatelessWidget {
  final String phone;
  final int activationType;
  final String email;

   VerifyCodeScreen({Key? key, required this.phone, required this.activationType, required this.email}):super(key: key);

  final TextEditingController pintCtrl = TextEditingController();
  final FocusNode focusNode = FocusNode();

  final ValueNotifier<int> timerSec = ValueNotifier(Vars.verifyCodeSecond);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}