import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.grey.shade400),
    );
    return TextField(
      cursorColor: Colors.black54,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: outlineInputBorder.copyWith(
          borderSide: BorderSide(color: Colors.black38),
        ),
        enabledBorder: outlineInputBorder,
        border: outlineInputBorder,
        prefixIcon: HeroIcon(HeroIcons.magnifyingGlass, size: 25),
        contentPadding: const EdgeInsets.all(16),
        isDense: true,
        hintStyle: GoogleFonts.merriweather(color: Colors.black54),
        hintText: 'Search',
      ),
    );
  }
}
