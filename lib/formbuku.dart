import 'package:flutter/material.dart';

class Addbuku extends StatelessWidget {
  final TextEditingController judulController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();

  void loginUser(BuildContext context) {
    String judul = judulController.text;
    String tanggal = tanggalController.text;

    if (judul.isNotEmpty && tanggal.isNotEmpty) {
      Navigator.pushReplacementNamed(context, '/beranda');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter judul and tanggal.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penambahan Buku'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            TextField(
              controller: judulController,
              decoration: InputDecoration(
                  labelText: 'judul',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.book)),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: tanggalController,
              decoration: InputDecoration(
                  labelText: 'tanggal',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.calendar_month)),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => loginUser(context),
              child: Text('OK'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                minimumSize: Size(double.infinity, 48.0),
              ),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
