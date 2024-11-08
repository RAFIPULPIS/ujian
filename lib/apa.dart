import 'package:flutter/material.dart';

class Apa extends StatelessWidget {
   Apa({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController infoController = TextEditingController();
  final TextEditingController kapanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tambah data',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(label: Text('nama ')),
            ),
            SizedBox(height: 20,),
            TextField(controller: infoController, decoration: InputDecoration(label: Text('apa aja')),
            ),
            SizedBox(height: 20,),
            TextField(controller: kapanController, decoration: InputDecoration(label: Text('sabi')),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Data disimpan boskuu")),
                );
              },
              child: Text("Simpan"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Data dikirim")),
                );
              },
              child: Text("kirim"),
            ),
             SizedBox(height: 20,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 20,),
                     FloatingActionButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/last');
                      },
                      child: Icon(Icons.arrow_right_alt_rounded),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    
  }
}