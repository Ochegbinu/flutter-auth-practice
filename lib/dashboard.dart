import 'package:flutter/material.dart';
import 'services/auth_service.dart';

class Dashboard extends StatelessWidget {
  static const String id = "dashboard";

  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome! You're logged in."),
            ElevatedButton(
              onPressed: () async {
                await AuthService.logout();
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
