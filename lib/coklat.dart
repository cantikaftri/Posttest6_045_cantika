import 'package:flutter/material.dart';
import 'home.dart';

class coklat extends StatefulWidget {
  const coklat({Key? key}) : super(key: key);

  @override
  State<coklat> createState() => _coklat();
}

enum Tipe { unknown, S, M, L }

class _coklat extends State<coklat> {
  final namaDepanCtrl = TextEditingController();
  final namaBelakangCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  Tipe tipe = Tipe.unknown;

  bool isSetuju = false;
  String namaDepan = "", namaBelakang = '', alamat = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaDepanCtrl.dispose();
    namaBelakangCtrl.dispose();
    alamatCtrl.dispose();
    super.dispose();
  }

  int angka = 0;

  String getUkuran(Tipe? value) {
    if (value == Tipe.S) {
      return "S";
    } else if (value == Tipe.M) {
      return "L";
    } else if (value == Tipe.L) {
      return "M";
    }
    return "Tidak Memilih Ukuran / Ukuran Bebas";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 106, 124, 123),
          title: Text(
            "ICE CREAM COKLAT",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 212, 214, 214),
            ),
          )),
      backgroundColor: Color.fromARGB(255, 217, 226, 228),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // Margin Bohongan
              Text('FORM PEMESANAN ICE CREAM '),
              const SizedBox(height: 20), // Margin Bohongan
              TextField(
                maxLines: 3,
                controller: namaDepanCtrl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Depan Pemesan ",
                  hintText: 'Isi Nama Depan Pemesan ',
                ),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              TextFormField(
                maxLines: 3,
                controller: namaBelakangCtrl,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nama Belakang Pemesan',
                    labelText: "Isi Nama Belakang Pemesan "),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              TextFormField(
                maxLines: 3,
                controller: alamatCtrl,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Alamat',
                    labelText: "Isi Alamat"),
              ),
              gambar1(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text("S"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.S,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text("M"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.M,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text("L"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.L,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  child: Text('Tambah $angka'),
                  onPressed: () {
                    setState(() {
                      angka++;
                    });
                    print(angka);
                  }),
              TextButton(
                  child: Text("Kurang"),
                  onPressed: () {
                    setState(() {
                      angka--;
                    });
                    print(angka);
                  }),

              ListTile(
                title: const Text("Setuju"),
                leading: Checkbox(
                  value: isSetuju,
                  onChanged: (bool? value) {
                    setState(() {
                      isSetuju = value!;
                    });
                  },
                ),
              ),
            ],
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                namaDepan = namaDepanCtrl.text;
                namaBelakang = namaBelakangCtrl.text;
                alamat = alamatCtrl.text;
              });
            },
            child: const Text(
              "Pesan Sekarang",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 199, 200, 200),
              ),
            ),
          ),
          const SizedBox(height: 20), // Margin Bohongan
          Text('Berikut Rincian Pesanan Anda: '),
          Text('Nama Pemesan        : $namaDepan $namaBelakang'),
          Text('Ukuran Ice Cream    : ${getUkuran(tipe)} '),
          Text('Jumlah Pesanan Anda : $angka'),
          Text(
              'Anda ${isSetuju ? "Telah Memesan" : "Pesanan Tidak Diproses (Silahkan Klik Setuju Agar Pesanan Anda DiProses ) "}'),
          const SizedBox(height: 20),
          snackBar(),
          MyButton()
        ],
      ),
    );
  }
}

class gambar1 extends StatelessWidget {
  const gambar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/coklat.png',
              ),
              fit: BoxFit.cover)),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
              return Home();
            }));
          }),
          child: Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFF023E4A),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Back",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class snackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text('Status Pesanan'),
          color: Colors.white,
          onPressed: () {
            final snackdemo = SnackBar(
              content: Text('Pesanan anda sedang diproses, silahkan ke kasir'),
              duration: (Duration(seconds: 4)),
              backgroundColor: Color(0xFF023E4A),
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(5),
            );
            Scaffold.of(context).showSnackBar(snackdemo);
          }),
    );
  }
}
