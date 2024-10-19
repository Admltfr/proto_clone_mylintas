import 'package:flutter/material.dart';
import 'package:flutter_stateless_statefull/redeem_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                          Text(
                              style: TextStyle(color: Colors.grey),
                              "Lacak Pesanan & Paket anda disini"),
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
                                Icons.description_outlined,
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
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
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
                                  Icons.description_outlined,
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
                                Icons.description_outlined,
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
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                                Icons.description_outlined,
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
                                  "Cara Bayar",
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
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text(
                                  "Redeem",
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
                            child: Image.asset(
                              'assets/images/mountain.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).width / 3,
                            child: Image.asset(
                              'assets/images/beach.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).width / 3,
                            child: Image.asset(
                              'assets/images/forest.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: ElevatedButton(
                onPressed: () {},
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