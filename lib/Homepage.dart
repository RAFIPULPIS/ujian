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
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wallet_giftcard,
            size: 200,
            color: Colors.blue,
            ),
            Text(
              "Selamat datang di aplikasi penambahan data ",
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
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}