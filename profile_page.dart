import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name = 'Syamsul Hadi Permana';
  final String title = 'Engineer';
  final String description = 'In Engineering We Trust';
  final String email = 'idamanmantu@gmail.com';
  final String phone = '+62 812 3456 7890';
  final String imageUrl = 'https://flutter.dev/images/flutter-logo-sharing.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 3,
          margin: EdgeInsets.all(24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(imageUrl, width: 100),
                SizedBox(height: 16),
                Text(name, style: Theme.of(context).textTheme.titleLarge),
                Text(title, style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Text(description, textAlign: TextAlign.center),
                Divider(height: 30),
                Text('Email: $email'),
                Text('Telepon: $phone'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}