import 'dart:convert' as convert;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:test_apis/decode/emisoras.decode.dart';
import 'package:test_apis/mapurl/url.mapurl.dart';
import 'package:test_apis/modelo/emisora.modelo.dart';

class EmisorasServices extends ChangeNotifier {

  EmisorasServices(){
    getOnEmisroasSercices();
  }

Future<String>_getemisoras() async{
  UrlMap urlMap = new UrlMap();
  var url = Uri.https(
      urlMap.url,
      '/Portal/seguroSpring/nuevoClientePublico/mercadoCapitalesController/listaInfoEmisoras',
      {'': '{http}'});
  final response = await http.get(url);
  if(response.statusCode==200) {
    return response.body;
  }else{
    return "";
  }
}

  getOnEmisroasSercices() async {
    final jsonData=await this._getemisoras();
    if(jsonData!="") {
      final listemisoras=EmisorasDecode.fromJson(jsonDecode(jsonData));
      print(listemisoras.data[0].emisora+listemisoras.data[0].precio);
    }else{
      print('error');
    }
  }
}
