import 'package:flutter/material.dart';
import 'package:myworthing/services/hex_to_color_service.dart';

class HelperText extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HelperText({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) => Text(text,
      style: TextStyle(color: HexColor.fromHex("#7F7F7F"), fontSize: 13));
}
