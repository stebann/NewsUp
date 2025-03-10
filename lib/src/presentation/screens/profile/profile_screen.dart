import 'package:flutter/material.dart';

import 'components/custom_profile_bar.dart';
import 'components/profile_header.dart';
import 'components/profile_options.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomProfileBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ProfileHeader(),
              const SizedBox(height: 20),
              ProfileOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
