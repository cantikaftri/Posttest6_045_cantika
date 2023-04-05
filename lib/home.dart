import 'package:flutter/material.dart';
import 'cococo.dart';
import 'coklat.dart';
import 'eskrim2.dart';
import 'profile.dart';
import 'landingpage.dart';
import 'package:flutter/cupertino.dart';
//import 'contoh.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget eskrim2() {
    return Container(
      width: 200,
      height: 190,
      margin: EdgeInsets.only(top: 61),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/eskrim2.png'),
        ),
      ),
    );
  }

  Widget coklat() {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.only(top: 61),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/coklat.png'),
        ),
      ),
    );
  }

  Widget cococo() {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.only(top: 61),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cococo.png'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 106, 124, 123),
        title: Text(
          "Ice Cream Store",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF023E4A),
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 106, 124, 123),
              ),
              child: Text(
                "Ice Cream Store",
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return profile();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Pesanan"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return zeropage();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return landingpage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 217, 236, 236),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 20,
              ),
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        eskrim2(),
                        detailpage(),
                        MyButton(),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        coklat(),
                        detailpage2(),
                        MyButton1(),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          cococo(),
                          detailpage1(),
                          MyButton2(),
                        ],
                      ))
                ],
              ),
              HomePage(),
            ],
          ),
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF023E4A) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color(0xFF023E4A),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color(0xFF023E4A),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return eskrim2();
        }));
      }),
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF023E4A),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Pesan",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MyButton1 extends StatelessWidget {
  const MyButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return coklat();
        }));
      }),
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF023E4A),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Pesan",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MyButton2 extends StatelessWidget {
  const MyButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return eskrim2();
        }));
      }),
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF023E4A),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Pesan",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class detailpage extends StatelessWidget {
  const detailpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return eskrim2();
        }));
      }),
      child: Container(
        width: 100,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF023E4A),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Deskripsi Item",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class detailpage1 extends StatelessWidget {
  const detailpage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return cococo();
        }));
      }),
      child: Container(
        width: 100,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF023E4A),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Deskripsi Item",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class detailpage2 extends StatelessWidget {
  const detailpage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return coklat();
        }));
      }),
      child: Container(
        width: 100,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF023E4A),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Deskripsi Item",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class zeropage extends StatelessWidget {
  const zeropage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pesanan Ice Krim",
          style: TextStyle(color: Color.fromARGB(255, 90, 125, 221)),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 133, 236, 219),
            child: Center(
              child: Text("1", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 133, 236, 219),
            child: Center(
              child: Text("2", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 133, 236, 219),
            child: Center(
              child: Text("3", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 133, 236, 219),
            child: Center(
              child: Text("4", style: TextStyle(fontSize: 24.0),),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
          child: CupertinoButton(
             onPressed: () {},
             child: const Text('Belum Ada Kontennya'),
      )),
    );
  }
}


