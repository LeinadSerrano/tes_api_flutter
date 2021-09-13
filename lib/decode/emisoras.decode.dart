import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_apis/modelo/emisora.modelo.dart';

EmisorasDecode dataFromJson(String str) =>
    EmisorasDecode.fromJson(json.decode(str));

String dataToJson(EmisorasDecode data) => json.encode(data.toJson());

class EmisorasDecode {
  bool error;
  late List<EmisoraModel> data;

  EmisorasDecode({required this.data, required this.error});

  factory EmisorasDecode.fromJson(Map<String, dynamic> json) {
    return EmisorasDecode(
        data: List<EmisoraModel>.from(
            json['data'].map((x) => EmisoraModel.fromJson(x))),
        error: json['error']);
  }

  Map<String, dynamic> toJson() => {"data": data, "error": error};
}
