import 'package:flutter/material.dart';
import 'package:flutter_stateless_statefull/redeem_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 1,
                    margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.search),
                          Container(
                            width: MediaQuery.sizeOf(context).width - 100,
                            height: 30,
                            child: TextFormField(
                              controller: searchcontroller,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelText: "Lacak Pesanan & Paket anda disini",
                                labelStyle: TextStyle(
                                    color: Colors.black38, fontSize: 12),
                              ),
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            color: Colors.green.shade500,
                            child:
                                Image.asset('assets/images/logowhatsapp.png'),
                          )
                        ],
                      ),
                    ),
                  ), //card
                  Container(
                      margin: EdgeInsets.fromLTRB(15, 10, 10, 3),
                      alignment: Alignment.centerLeft,
                      child: Text("Selamat Datang,")),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 10, 10),
                    alignment: Alignment.centerLeft,
                    child: Text("Adam Lutfi Ramadhan",
                        style: TextStyle(
                            fontSize: 15, color: Colors.green.shade500)),
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    elevation: 4,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                              colors: [
                                Colors.green.shade600,
                                Colors.lightGreen.shade500
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width:
                                  ((MediaQuery.sizeOf(context).width / 2) - 10),
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              color: Colors.transparent,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                "Pastikan email anda valid dan terdaftar, serta ubah password anda disini untuk melakukan login dengan email.",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              )),
                          Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.transparent,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  )))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width / 7,
                              height: MediaQuery.sizeOf(context).width / 7,
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12),
                              child: Icon(
                                Icons.card_membership,
                                color: const Color.fromARGB(255, 85, 119, 86),
                              ),
                            ),
                            Container(
                                width: MediaQuery.sizeOf(context).width / 7,
                                height: MediaQuery.sizeOf(context).width / 11,
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Text(
                                  "Sewa & Rental",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10),
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return redeemPage();
                                }));
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width / 7,
                                height: MediaQuery.sizeOf(context).width / 7,
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black12),
                                child: Icon(
                                  Icons.card_giftcard,
                                  color: const Color.fromARGB(255, 85, 119, 86),
                                ),
                              ),
                            ),
                            Container(
                                width: MediaQuery.sizeOf(context).width / 7,
                                height: MediaQuery.sizeOf(context).width / 11,
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Text(
                                  "Redeem",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10),
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width / 7,
                              height: MediaQuery.sizeOf(context).width / 7,
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12),
                              child: Icon(
                                Icons.description_outlined,
                                color: const Color.fromARGB(255, 85, 119, 86),
                              ),
                            ),
                            Container(
                                width: MediaQuery.sizeOf(context).width / 7,
                                height: MediaQuery.sizeOf(context).width / 11,
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Text(
                                  "Riwayat",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10),
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width / 7,
                              height: MediaQuery.sizeOf(context).width / 7,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12),
                              child: Icon(
                                Icons.person,
                                color: const Color.fromARGB(255, 85, 119, 86),
                              ),
                            ),
                            Container(
                                width: MediaQuery.sizeOf(context).width / 7,
                                height: MediaQuery.sizeOf(context).width / 11,
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text(
                                  "Profil",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.fromLTRB(29, 7, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width / 7,
                              height: MediaQuery.sizeOf(context).width / 7,
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12),
                              child: Icon(
                                Icons.mail,
                                color: const Color.fromARGB(255, 85, 119, 86),
                              ),
                            ),
                            Container(
                                width: MediaQuery.sizeOf(context).width / 7,
                                height: MediaQuery.sizeOf(context).width / 11,
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Text(
                                  "Pesan",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10),
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width / 7,
                              height: MediaQuery.sizeOf(context).width / 7,
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12),
                              child: Icon(
                                Icons.credit_card,
                                color: const Color.fromARGB(255, 85, 119, 86),
                              ),
                            ),
                            Container(
                                width: MediaQuery.sizeOf(context).width / 7,
                                height: MediaQuery.sizeOf(context).width / 11,
                                margin: EdgeInsets.fromLTRB(10, 0, 15, 0),
                                child: Text(
                                  "Cara Bayar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10),
                                )),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).width / 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Image.asset(
                                'assets/images/mylintasimage1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).width / 3,
                            child: Image.asset(
                                'assets/images/mylintasimage2.jpg',
                                fit: BoxFit.fill),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).width / 3,
                            child: Image.asset(
                              'assets/images/mylintasimage3.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    margin: EdgeInsets.fromLTRB(10, 30, 10, 50),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.lightBlue.shade600,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tanggal Pergi"),
                                Text(
                                  "Monday, 21 October 2024",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    size: 20,
                                    color: Colors.amber.shade800,
                                  ),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.fiber_manual_record_outlined,
                                      size: 3),
                                  Icon(Icons.circle_outlined,
                                      size: 20,
                                      color: Colors.lightBlue.shade600),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Cabang Asal"),
                                      Text(
                                        "KLIK DI SINI UNTUK CABANG ASAL",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Cabang Tujuan"),
                                      Text(
                                        "KLIK DI SINI UNTUK CABANG TUJUAN",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Builder(
                builder: (BuildContext context) {
                  return ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          
                            duration: Duration(seconds: 1),
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.red.shade500,
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.info,color: Colors.white,),
                                Text(
                                  'Anda belum memilih cabang asal',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade500),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.sizeOf(context).width,
                      height: 25,
                      color: Colors.transparent,
                      child: Text(
                        "Cari tiket",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent),
                        child: Container(
                           color: Colors.transparent,
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            height: 12,
                            child: Text(
                              "Update",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                      ),*/
