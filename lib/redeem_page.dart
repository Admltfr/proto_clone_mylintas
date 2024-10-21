import 'package:flutter/material.dart';
import 'package:flutter_stateless_statefull/main_page.dart';

void main() {
  runApp(const redeemPage());
}

class redeemPage extends StatelessWidget {
  final jumlahvoucher = 1;
  const redeemPage({super.key});
  

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context){
              return MainPage();
            }));
          }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          title: Text("REDEEM POIN",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.green.shade500,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(7),
              width: MediaQuery.sizeOf(context).width,
              child: Text("Redeem Voucher : $jumlahvoucher",textAlign: TextAlign.left,),
            ),
            
          ],
        ),
        
      ),
    );
  }
}

