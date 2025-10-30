import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(ProfileCardApp());
}

class ProfileCardApp extends StatefulWidget {
  @override
  State<ProfileCardApp> createState() => _ProfileCardAppState();
}

class _ProfileCardAppState extends State<ProfileCardApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card App',
      theme: isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Card App'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
              child: Text(
                isDark ? 'Light' : 'Dark',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: ProfilePage(),
      ),
    );
  }
}