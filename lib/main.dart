import 'package:projectd/form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOME',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 30),
          child: Center(
            child: Column(
              children: <Widget>[
                const Text(
                  'Laporkan Pengaduan Masyarakat',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const Heading(text: 'Laporkan Pengaduan Masyarakat'),
                const SizedBox(height: 10,),
                Center(
                  child: Wrap(
                    children: const [
                      Text('Laporkan jika terjadi keadaan darurat, instansi terdekat akan segera sampai disana.',
                        textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('assets/bg_pemadam.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Title(text: 'Laporan'),
                              Title(text: 'Kebakaran'),
                            ],
                          )
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 30,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.white
                            ),
                            child: Ink(
                              child: IconButton(
                                icon: const Icon(Icons.arrow_forward_ios, size: 12,),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const FormPage()),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('assets/bg_ambulance.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Title(text: 'Laporan'),
                              Title(text: 'Medis'),
                            ],
                          )
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 30,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.white
                            ),
                            child: Ink(
                              child: IconButton(
                                icon: const Icon(Icons.arrow_forward_ios, size: 12,),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const FormPage()),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('assets/bg_bencana.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Title(text: 'Laporan'),
                              Title(text: 'Medis'),
                            ],
                          )
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 30,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.white
                            ),
                            child: Ink(
                              child: IconButton(
                                icon: const Icon(Icons.arrow_forward_ios, size: 12,),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const FormPage()),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String text;
  const Title({required this.text});

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}