import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

EmisoraModel dataFromJson(String str) =>
    EmisoraModel.fromJson(json.decode(str));

String dataToJson(EmisoraModel data) => json.encode(data.toJson());
class EmisoraModel {

   String emisora;
   String serie;
   String razonsocial;
   String sector;
   String subsector;
   String precio;
   String variacion;
   String sic;


  EmisoraModel({required this.emisora, required this.serie, required this.razonsocial, required this.sector,
      required this.subsector, required this.precio, required this.variacion, required this.sic});

  factory EmisoraModel.fromJson(Map<String, dynamic>json){
    return EmisoraModel(
      emisora: json['emisora'].toString(),
      serie: json['serie'].toString(),
      razonsocial: json['razonsocial'].toString(),
      sector: json['sector'].toString(),
      subsector: json['subsector'].toString(),
      precio: json['precio'].toString(),
      variacion: json['variacion'].toString(),
      sic: json['sic'].toString(),
    );
  }
    Map<String, dynamic> toJson() =>
        {
          "emisora": emisora,
          "serie": serie,
          "razonsocial": razonsocial,
          "sector": sector,
          "subsector": subsector,
          "precio": precio,
          "variacion": variacion,
          "sic": sic,
        };
  }

