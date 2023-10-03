import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flora_co/lib.dart';

class BigButton extends StatelessWidget {
  final String header;
  final String bodyText;
  final Function() onTap;

  const BigButton({
    Key? key,
    required this.header,
    required this.bodyText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 37),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 31),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFFFEFEF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Text(
                  bodyText,
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              rightArrow,
              width: 30,
              height: 28,
            )
          ],
        ),
      ),
    );
  }
}
