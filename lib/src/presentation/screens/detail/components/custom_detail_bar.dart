import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:newsapp/src/widgets/custom_icon_button.dart';

class CustomSaveBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomSaveBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white54,
      toolbarHeight: kToolbarHeight + 20,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(icon: Icon(Icons.arrow_back), onTap: context.pop),
            Spacer(),
            CustomIconButton(icon: Icon(Icons.share), onTap: () {}),
            SizedBox(width: 10),
            CustomIconButton(
              icon: const HeroIcon(HeroIcons.bookmark),
              onTap: () {},
            ),
            SizedBox(width: 10),
            CustomIconButton(icon: Icon(Icons.more_horiz), onTap: () {}),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
