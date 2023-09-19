import 'package:flutter/material.dart';
import 'package:tio/form.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class desc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormBuku(),
              ));
        },
        child: Icon(Icons.book),
      ),
      appBar: AppBar(
        title: Text('Ruang Sunyi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset(
                  'assets/images/buku1.png',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ruang Sunyi',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Apakah terlahir miskin menjadi hina? Pertanyaan itu selalu bersarang di pikiran Naura sedari kecil. Mendapat perlakuan berbeda dari teman-teman dan lingkunganya, membuat dia memiliki dendam.Ia berjanji, suatu hari nanti ia akan membuktikan, dirinya akan melangkah dan mempeelihatkan apa itu kaya yang sesunguhnya.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 3, // Nilai rating awal
                    minRating: 1, // Nilai rating minimum
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5, // Jumlah bintang
                    itemSize: 25.0, // Ukuran bintang
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
