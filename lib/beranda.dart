import 'package:flutter/material.dart';
import 'package:tio/form.dart';
import 'package:tio/formbuku.dart';
import 'package:tio/desc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedNavbar = 0;

  void changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image(
                    image: AssetImage('assets/images/buku.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPadding(
                padding: new EdgeInsets.all(5.0),
                sliver:
                    new SliverList(delegate: new SliverChildListDelegate([])),
              )
            ];
          },
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 25.0),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'E-Library',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 100.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormBuku(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          color: Colors.red[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/buku.png',
                                width: 75.0,
                                height: 75.0,
                              ),
                              Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Text(
                                  'Sejarah ',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => desc(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          color: Colors.red[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/buku1.png',
                                width: 100.0,
                                height: 100.0,
                              ),
                              Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Text(
                                  'Ruang Sunyi',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormBuku(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          color: Colors.red[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/buku2.png',
                                width: 100.0,
                                height: 100.0,
                              ),
                              Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Text(
                                  'Jalan Pulang',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormBuku(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          color: Colors.red[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/buku4.png',
                                width: 100.0,
                                height: 100.0,
                              ),
                              Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Text(
                                  'Indigo',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addbuku(),
                        ));
                  },
                  child: Icon(Icons.add),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
