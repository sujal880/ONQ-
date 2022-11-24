import 'package:flutter/material.dart';
import 'package:qr_scanner/home.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}
class Signin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text('SIGNIN',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue)),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsetsDirectional.only(start:40,end: 40),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsetsDirectional.only(start:40,end: 40),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsetsDirectional.only(start:170),
            child: Text('Forgot Password',style: TextStyle(fontSize: 18,color: Colors.blue,decoration: TextDecoration.underline)),
          ),
          SizedBox(height: 50),
          Container(
            height: 50,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue
            ),
            child: Center(child: Text('SIGNIN',style: TextStyle(fontSize: 20,color: Color(0XFFFFFFFF),fontWeight: FontWeight.bold),)),
          )
        ],
      ),
    );
  }

}