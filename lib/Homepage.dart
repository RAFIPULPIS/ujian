import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selamat datang ",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40,),
             ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/apa');
              },
              child: Text('tambah data'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/last');
              },
              child: Text('Ke Halaman kedua'),
            ),
          ],
        ),
      ),
    );
  }
}