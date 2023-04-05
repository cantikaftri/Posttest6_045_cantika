import 'package:flutter/material.dart';
import 'cococo.dart';
import 'coklat.dart';
import 'eskrim2.dart';
import 'profile.dart';
import 'home.dart';

class eskrim1 extends StatelessWidget {
  const eskrim1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 236, 236),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 106, 124, 123),
          title: Center(
            child: Text(
              "Deskripsi Item",
              style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
              child: Column(
            children: [
              SizedBox(width: 50),
              Text(
                "Gelato Bucket",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/eskrim2.png'),
              ),
              SizedBox(width: 50),
              Text(
                "Gelato Bucket Ice Cream dengan perpaduan vanilla, coklat, dan lattte\ndikemas dalam satu tempat\nuntuk menciptakan kombinasi sempurna",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(width: 20),
              Text(
                "Komposisi :",
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "* Susu sapi\n*Whipping Cream\n*Kuning Telur\n*Gula dan Perasa",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Harga & Ukuran :",
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp. 15.000,- Size : Small\nRp. 30.000,- Size : Medium\nRp. 60.000,- Size : Large",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(width: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return Home();
                      }),
                    );
                  },
                  child: Text(
                    "< Kembali ",
                    style: TextStyle(fontSize: 14, color: Color(0xFF023E4A)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return eskrim2();
                      }),
                    );
                  },
                  child: Text("Pesan > ",
                      style: TextStyle(fontSize: 14, color: Color(0xFF023E4A))),
                ),
              ]),
            ],
          )),
        ));
  }
}

class cococo1 extends StatelessWidget {
  const cococo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 236, 236),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 106, 124, 123),
          title: Center(
            child: Text(
              "Deskripsi Item",
              style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
              child: Column(
            children: [
              SizedBox(width: 50),
              Text(
                "Frozen Yogurt",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/cococo.png'),
              ),
              SizedBox(width: 50),
              Text(
                "Frozen Yogurt cocok untuk teman diet\nmakanan yang sehat untuk pencernaan\nes krim dengan rasa asam dan kanudngan\nlemak lebih rendah",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(width: 20),
              Text(
                "Komposisi :",
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "* Susu Segar\n*Gelatin\n*Gula Pasir\n*Gelatin\n*Whipping Cream\nPlain Yogurt\nEssence",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Harga & Ukuran :",
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp. 10.000,- Size : Small\nRp. 20.000,- Size : Medium\nRp. 30.000,- Size : Large",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(width: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return Home();
                      }),
                    );
                  },
                  child: Text(
                    "< Kembali ",
                    style: TextStyle(fontSize: 14, color: Color(0xFF023E4A)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return cococo();
                      }),
                    );
                  },
                  child: Text("Pesan > ",
                      style: TextStyle(fontSize: 14, color: Color(0xFF023E4A))),
                ),
              ]),
            ],
          )),
        ));
  }
}

class coklat1 extends StatelessWidget {
  const coklat1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 236, 236),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 106, 124, 123),
          title: Center(
            child: Text(
              "Deskripsi Item",
              style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
              child: Column(
            children: [
              SizedBox(width: 50),
              Text(
                "Cornetto",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/coklat.png'),
              ),
              SizedBox(width: 50),
              Text(
                "Perpaduan antara kacang dan coklat\nLmembuar rasa Cornetto\nmenjadi lebih nikmat dengan\nbalutan coklat\nyang mewah",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(width: 20),
              Text(
                "Komposisi :",
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "*Cone Wafer\nLesitin Kedelai\n*Nabati\n*Kacang\n*Pewarna Coklat",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Harga % Ukuran :",
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp. 10.000,- Size : Small\nRp. 20.000,- Size : Medium\nRp. 30.000,- Size : Large",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(width: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return Home();
                      }),
                    );
                  },
                  child: Text(
                    "< Kembali ",
                    style: TextStyle(fontSize: 14, color: Color(0xFF023E4A)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return coklat();
                      }),
                    );
                  },
                  child: Text("Pesan > ",
                      style: TextStyle(fontSize: 14, color: Color(0xFF023E4A))),
                ),
              ]),
            ],
          )),
        ));
  }
}
