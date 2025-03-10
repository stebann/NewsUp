import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/config/theme/app_colors.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildProfileOption(Icons.edit, 'Edit Profile'),
        _buildProfileOption(Icons.notifications_none, 'Notifications'),
        _buildProfileOption(Icons.security, 'Security & Privacy'),
        _buildProfileOption(Icons.language, 'Language'),
        _buildProfileOption(Icons.dark_mode, 'Appearance'),
        _buildProfileOption(Icons.help_outline, 'Help & Support'),
        _buildProfileOption(Icons.info_outline, 'About'),
        _buildProfileOption(Icons.description, 'Terms & Conditions'),
        _buildProfileOption(Icons.logout, 'Log Out'),
      ],
    );
  }

  Widget _buildProfileOption(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: AppColors.textColor),
        title: Text(title, style: GoogleFonts.merriweather(fontSize: 16)),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: () {},
      ),
    );
  }
}
