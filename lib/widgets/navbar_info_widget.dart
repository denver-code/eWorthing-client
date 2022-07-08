import 'package:flutter/material.dart';

class NavbarInfo extends StatelessWidget {
  const NavbarInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 14,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          border: Border.all(
            color: const Color.fromRGBO(221, 221, 221, 1),
            width: 1,
          ),
        ),
        child: const Text("Authorize", style: TextStyle(fontSize: 15)));
  }
}
