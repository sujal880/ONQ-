import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Temp extends StatefulWidget{
  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  String _scanBarcode = 'Unknown';
  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Stack(
                children:[
                  Container(
                    height: 600,
                    width: 340,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0XFF000000),width: 1)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start:20,top:25),
                    child: InkWell(onTap: (){setState(() {
                      scanQR();
                    });},
                      child: Container(
                        height: 550,
                        width: 300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 30),
              InkWell(onTap:(){
                //Navigator.push(context,MaterialPageRoute(builder: (context)=>Register()));
              },
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue
                  ),
                  child: Center(child: InkWell(onTap: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>Register()));
                  },
                      child: Text('REGISTER',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),))),
                ),
              ),
              SizedBox(width: 20),
              InkWell(onTap: (){
                //Navigator.push(context,MaterialPageRoute(builder: (context)=>Signin()));
              },
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue
                  ),
                  child: Center(child: InkWell(
                      onTap: (){
                        //Navigator.push(context,MaterialPageRoute(builder: (context)=>Signin()));
                      },
                      child: Text('SIGNIN',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}