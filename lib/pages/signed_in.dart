import 'package:flutter/material.dart';

class SignedIn extends StatelessWidget {
  final String username;

  SignedIn({required this.username, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                  child: Column(
                children: [
                  Text('Welcome ${this.username}',
                      style: TextStyle(fontSize: 24)),
                  Icon(Icons.check_circle_rounded)
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
