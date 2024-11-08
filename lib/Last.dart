import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  const Last({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: List.generate(
                5,
                (index) => ListTile(
                  leading: Icon(Icons.person),
                  title: Text("rafi andika"),
                  subtitle: Text("gokill"),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text("home page"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/apa');
                },
                child: Text("Tambah data"),
              ),
            ],
          ),
          SizedBox(height: 20), 
        ],
      ),
    );
  }
}

