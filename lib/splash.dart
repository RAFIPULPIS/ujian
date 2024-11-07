import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.app_registration, size: 200,
            color: Colors.blue,
            ),
             
            Text(
              "Aplikasi Saya",
              style: TextStyle(
               fontSize: 24,
               fontWeight: FontWeight.bold,
               color: Colors.blue
               ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Lanjut'),
            ),
          ],
        ),
      ),
    );
  }
}
