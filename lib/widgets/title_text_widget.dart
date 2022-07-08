import 'package:flutter/material.dart';
import 'package:myworthing/services/hex_to_color_service.dart';

class TitleText extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TitleText({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) => Text(text,
      style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w700,
          color: HexColor.fromHex("#343237")));
}
