import 'package:flutter/material.dart';
import 'package:flutter_stateless_statefull/main_page.dart';

void main() {
  runApp(const redeemPage());
}

class redeemPage extends StatelessWidget {
  final int jumlahvoucher = 0;
  final int count = 1;
  const redeemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            title: Text(
              "REDEEM POIN",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green.shade500,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.sizeOf(context).width,
                  child: Text(
                    "Redeem Voucher : $jumlahvoucher",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 2,
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/forest.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "Redeem Voucher",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.white),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
                                  child: Text(
                                    "Voucher",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                              Container(
                                  margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                  child: Text(
                                    "Rp.10.000",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  )),
                            ],
                          ),
                          Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 30),
                              child: Text(
                                "Dengan Minimal Poin 10000",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: Text("Masa Aktif s/d"),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Text("31 Desember 2024"),
                              )
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,shape: BeveledRectangleBorder()),
                            child: Text(
                              "REDEEM",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 2,
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/mountain.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "Redeem Voucher",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.white),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
                                  child: Text(
                                    "Voucher",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                              Container(
                                  margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                  child: Text(
                                    "Rp.10.000",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  )),
                            ],
                          ),
                          Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 30),
                              child: Text(
                                "Dengan Minimal Poin 10000",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: Text("Masa Aktif s/d"),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Text("31 Desember 2024"),
                              )
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,shape: BeveledRectangleBorder()),
                            child: Text(
                              "REDEEM",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
