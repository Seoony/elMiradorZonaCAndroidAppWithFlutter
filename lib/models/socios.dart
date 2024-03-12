import 'dart:convert';

import 'package:el_mirador_zonac_androidapp/models/terrenos.dart';

List<Socio> socioFromJson(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed
    .map<Socio>((json) => Socio.fromJson(json))
    .toList();
}

class Socio {
  int? id;
  String? dni;
  String? nombres;
  String? apellidoPat;
  String? apellidoMat;
  String? direccion;
  String? celular;
  String? observaciones;
  bool? isStaff;
  bool? isSuperuser;
  bool? vivencia;
  bool? exonerado;
  String? fechaNacimiento;
  Socio? creadoPor;
  Socio? modificadoPor;
  Terreno? terreno;
  
  Socio({
    this.id,
    this.dni,
    this.nombres,
    this.apellidoPat,
    this.apellidoMat,
    this.direccion,
    this.celular,
    this.observaciones,
    this.isStaff,
    this.vivencia,
    this.exonerado,
    this.fechaNacimiento,
    this.creadoPor,
    this.modificadoPor,
    this.terreno,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'dni': dni,
    'nombres': nombres,
    'apellidoPat': apellidoPat,
    'apellidoMat': apellidoMat,
    'direccion': direccion,
    'celular': celular,
    'observaciones': observaciones,
    'isStaff': isStaff,
    'vivencia': vivencia,
    'exonerado': exonerado,
    'fechaNacimiento': fechaNacimiento,
    'creadoPor': creadoPor,
    'modificadoPor': modificadoPor,
    'terreno': terreno,
  };

  factory Socio.fromJson(Map<String, dynamic> json) {
    return Socio(
      id: json['id'] as int,
      dni: json['dni'] as String,
      nombres: json['nombres'] as String,
      apellidoPat: json['apellidoPat'] as String,
      apellidoMat: json['apellidoMat'] as String,
      direccion: json['direccion'] as String,
      celular: json['celular'] as String,
      observaciones: json['observaciones'] as String,
      isStaff: json['isStaff'] as bool,
      vivencia: json['vivencia'] as bool,
      exonerado: json['exonerado'] as bool,
      fechaNacimiento: json['fechaNacimiento'] as String,
      creadoPor: json['creadoPor'] as Socio,
      modificadoPor: json['modificadoPor'] as Socio,
      terreno: json['terreno'] as Terreno,
    );
  } 
}