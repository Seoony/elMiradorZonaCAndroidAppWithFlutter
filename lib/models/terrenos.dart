import 'dart:convert';

import 'package:el_mirador_zonac_androidapp/models/socios.dart';

List<Terreno> terrenoFromJson(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed
    .map<Terreno>((json) => Terreno.fromJson(json))
    .toList();
}

class Terreno {
  int? id;
  String? codigo;
  String? manzana;
  String? lote;
  double? area;
  bool? otrosUsos;
  bool? disponible;
  String? observaciones;
  String? fechaActualizacion;
  String? estado;
  Socio? socio;
  Socio? creadoPor;
  Socio? modificadoPor;

  Terreno({
    this.id,
    this.codigo,
    this.manzana,
    this.lote,
    this.area,
    this.otrosUsos,
    this.disponible,
    this.observaciones,
    this.fechaActualizacion,
    this.estado,
    this.socio,
    this.creadoPor,
    this.modificadoPor,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'codigo': codigo,
    'manzana': manzana,
    'lote': lote,
    'area': area,
    'otrosUsos': otrosUsos,
    'disponible': disponible,
    'observaciones': observaciones,
    'fechaActualizacion': fechaActualizacion,
    'estado': estado,
    'socio': socio,
    'creadoPor': creadoPor,
    'modificadoPor': modificadoPor,
  };
  
  factory Terreno.fromJson(Map<String, dynamic> json) {
    return Terreno(
      id: json['id'] as int,
      codigo: json['codigo'],
      manzana: json['manzana'],
      lote: json['lote'],
      area: json['area'],
      otrosUsos: json['otrosUsos'],
      disponible: json['disponible'],
      observaciones: json['observaciones'],
      fechaActualizacion: json['fechaActualizacion'],
      estado: json['estado'],
      socio: json['socio'],
      creadoPor: json['creadoPor'],
      modificadoPor: json['modificadoPor'],
    );
  }

}