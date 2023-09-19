import 'package:flutter/material.dart';

class FormBuku extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();

  void loginUser(BuildContext context) {
    String nama = nameController.text;
    String kelas = kelasController.text;
    String tanggal = tanggalController.text;

    if (nama.isNotEmpty && kelas.isNotEmpty && tanggal.isNotEmpty) {
      Navigator.pushReplacementNamed(context, '/beranda');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter name and kelas.'),
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
        title: Text('Peminjaman Buku'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: kelasController,
              decoration: InputDecoration(
                  labelText: 'Kelas',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.class_rounded)),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: tanggalController,
              decoration: InputDecoration(
                  labelText: 'Tanggal',
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
