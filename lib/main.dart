import 'package:flutter/material.dart';
import 'package:myworthing/screens/enter_email_screen.dart';
import 'package:myworthing/services/preloader_service.dart';

void main() {
  runApp(const MyApp());
}

String startupScreenFinder() {
  return "/enterEmail";
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyWorthing',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/preloaderService",
      routes: {
        "/preloaderService": (_) => const PreloaderService(),
        "/enterEmail": (_) => const EnterEmailScreen()
      },
    );
  }
}
