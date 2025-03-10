import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/config/theme/app_colors.dart';

class CustomSaveBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomSaveBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white54,
      toolbarHeight: kToolbarHeight + 20,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Saved News',
              style: GoogleFonts.merriweather(
                color: AppColors.textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(Icons.delete_outline),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
