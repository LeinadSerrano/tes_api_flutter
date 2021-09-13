import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_apis/Services/emisoras.services.dart';
import 'package:test_apis/modelo/emisora.modelo.dart';

class CtrlEmisoras {
  late EmisoraModel _emisoraModel;
  EmisorasServices _emisorasServices = new EmisorasServices();

  Widget getall(Widget body) {
    return new MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: ( _ ) => EmisorasServices(),
            lazy: true,
          ),
        ],
        child: body,
      );
  }
}
