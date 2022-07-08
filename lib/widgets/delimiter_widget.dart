import 'package:flutter/material.dart';

class Delimiter extends StatelessWidget {
  const Delimiter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      SizedBox(height: MediaQuery.of(context).size.height / 80);
}
