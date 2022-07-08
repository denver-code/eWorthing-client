import 'package:flutter/material.dart';
import 'package:myworthing/services/hex_to_color_service.dart';
import 'package:myworthing/widgets/delimiter_widget.dart';
import 'package:myworthing/widgets/help_text_widget.dart';
import 'package:myworthing/widgets/navbar_info_widget.dart';
import 'package:myworthing/widgets/title_text_widget.dart';

class EnterEmailScreen extends StatefulWidget {
  const EnterEmailScreen({Key? key}) : super(key: key);

  @override
  State<EnterEmailScreen> createState() => _EnterEmailScreenState();
}

class _EnterEmailScreenState extends State<EnterEmailScreen> {
  final TextEditingController _email = TextEditingController();
  bool visible = false;
  String emailText = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const NavbarInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 17.5),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 4.5),
                const TitleText(
                  text: "Your email",
                ),
                const Delimiter(),
                const HelperText(
                  text: "Enter the email address to get the login code",
                ),
                const Delimiter(),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 15.5,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                          offset: Offset(0, 4),
                          blurRadius: 8)
                    ],
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: TextFormField(
                      controller: _email,
                      onChanged: (text) {
                        emailText = text;
                        if (text.isNotEmpty) {
                          visible = true;
                        } else {
                          visible = false;
                        }
                      },
                      style: TextStyle(
                          color: HexColor.fromHex("#343237"), fontSize: 14),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        labelStyle: TextStyle(
                            color: HexColor.fromHex("#343237"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        hintStyle: TextStyle(
                            color: HexColor.fromHex("#828282"),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        filled: false,
                        fillColor: Colors.transparent,
                        labelText: "Tell us your email",
                        hintText: "you@example.com",
                      )),
                ),
                const Delimiter(),
                const HelperText(
                    text:
                        "By using the eWorthing application, you acknowledge and agree with our Privacy Policy"),
              ],
            ),
          )),
          Visibility(
              visible: visible,
              child: GestureDetector(
                onTap: () {
                  if (visible) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Row(
                        children: const [
                          Text("Please wait..."),
                          SizedBox(
                            width: 50,
                          ),
                          CircularProgressIndicator(),
                        ],
                      )),
                    );
                  }
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 16.5,
                  color: HexColor.fromHex("#008CFF"),
                  alignment: Alignment.center,
                  child: const Text("Receive Code",
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                ),
              ))
        ],
      ),
    ));
  }
}
