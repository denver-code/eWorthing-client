import 'dart:async';

import 'package:flutter/material.dart';

class PreloaderService extends StatefulWidget {
  const PreloaderService({Key? key}) : super(key: key);

  @override
  State<PreloaderService> createState() => _PreloaderServiceState();
}

class _PreloaderServiceState extends State<PreloaderService> {
  String startupScreenFinder() {
    return "/enterEmail";
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(startupScreenFinder());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('eWorthing',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
