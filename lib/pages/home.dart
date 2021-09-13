import 'package:flutter/material.dart';
import 'package:test_apis/controller/emisora.controller.dart';

class home extends StatefulWidget{
  @override
  _home createState()=>_home();
}
class _home extends State<home>{
  CtrlEmisoras ctrlEmisoras=new CtrlEmisoras();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ctrlEmisoras.getall(_holamundo()) ,
    );
  }
Widget _holamundo(){
    return Center(
      child: new Text('Hola mundo'),
    );
}
}