import 'package:flutter/material.dart';
import 'home.dart';

class landingpage extends StatelessWidget {
  const landingpage({Key? key}) : super(key: key);

  // Widget eskrim2() {
  //   return Container(
  //     width: 200,
  //     height: 190,
  //     margin: EdgeInsets.only(top: 61),
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //         image: AssetImage('assets/eskrim2.png'),
  //       ),
  //     ),
  //   );
  // }

  // Widget coklat() {
  //   return Container(
  //     width: 200,
  //     height: 200,
  //     margin: EdgeInsets.only(top: 61),
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //         image: AssetImage('assets/coklat.png'),
  //       ),
  //     ),
  //   );
  // }

  // Widget cococo() {
  //   return Container(
  //     width: 200,
  //     height: 200,
  //     margin: EdgeInsets.only(top: 61),
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //         image: AssetImage('assets/cococo.png'),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 106, 124, 123),
          // leading: Icon(
          //   Icons.arrow_back_ios,
          //   color: Color(0xFF023E4A),
          // ),
          title: Text(
            "ICE CREAM STORE",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          )),
      backgroundColor: Color.fromARGB(255, 217, 236, 236),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.only(top: 71),
                decoration: BoxDecoration(
                ),
              ),
              Text(
                "ICE CREAM STORE",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023E4A),
                ),
              ),
              Text(
                "SELAMAT DATANG DAN SILAHKAN BERBELANJA DENGAN YANG MANIS-MANIS",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
                width: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     SizeContainer(isActive: true, size: "S"),
              //     SizeContainer(size: "M"),
              //     SizeContainer(size: "L"),
              //   ],
              // ),
              MyButton(),
            ],
          ),
        ],
      ),
    );
  }
}

// class SizeContainer extends StatelessWidget {
//   const SizeContainer({Key? key, this.isActive = false, required this.size})
//       : super(key: key);

//   final bool isActive;
//   final String size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 85,
//       height: 60,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: isActive ? Color(0xFF023E4A) : Colors.transparent,
//         borderRadius: BorderRadius.circular(6),
//         border: Border.all(
//           width: 1,
//           color: Color(0xFF023E4A),
//         ),
//       ),
//       child: Text(
//         size,
//         style: TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.bold,
//           color: isActive ? Colors.white : Color(0xFF023E4A),
//         ),
//       ),
//     );
//   }
// }

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
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFF023E4A),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "LOGIN",
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
