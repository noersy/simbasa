// To parse this JSON data, do
//
//     final homePageModel = homePageModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

HomePageModel homePageModelFromJson(String str) => HomePageModel.fromJson(json.decode(str));

String homePageModelToJson(HomePageModel data) => json.encode(data.toJson());

class HomePageModel {
  HomePageModel({
    @required this.total,
    @required this.messages,
    @required this.data,
  });

  final int total;
  final String messages;
  final List<Datum> data;

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
    total: json["total"] == null ? null : json["total"],
    messages: json["messages"] == null ? null : json["messages"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total == null ? null : total,
    "messages": messages == null ? null : messages,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    @required this.id,
    @required this.namaNasabah,
    @required this.username,
    @required this.almtNasabah,
    @required this.noHp,
    @required this.jenisKelamin,
    @required this.tmptLahir,
    @required this.tglLahir,
    @required this.status,
    @required this.agama,
    @required this.pekerjaan,
    @required this.noRekening,
    @required this.saldo,
    @required this.password,
    @required this.kelurahanId,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.deletedAt,
  });

  final int id;
  final String namaNasabah;
  final String username;
  final String almtNasabah;
  final String noHp;
  final int jenisKelamin;
  final String tmptLahir;
  final String tglLahir;
  final String status;
  final String agama;
  final String pekerjaan;
  final int noRekening;
  final int saldo;
  final String password;
  final int kelurahanId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"] == null ? null : json["id"],
    namaNasabah: json["nama_nasabah"] == null ? null : json["nama_nasabah"],
    username: json["username"] == null ? null : json["username"],
    almtNasabah: json["almt_nasabah"] == null ? null : json["almt_nasabah"],
    noHp: json["no_hp"] == null ? null : json["no_hp"],
    jenisKelamin: json["jenis_kelamin"] == null ? null : json["jenis_kelamin"],
    tmptLahir: json["tmpt_lahir"] == null ? null : json["tmpt_lahir"],
    tglLahir: json["tgl_lahir"] == null ? null : json["tgl_lahir"],
    status: json["status"] == null ? null : json["status"],
    agama: json["agama"] == null ? null : json["agama"],
    pekerjaan: json["pekerjaan"] == null ? null : json["pekerjaan"],
    noRekening: json["no_rekening"] == null ? null : json["no_rekening"],
    saldo: json["saldo"] == null ? null : json["saldo"],
    password: json["password"] == null ? null : json["password"],
    kelurahanId: json["kelurahan_id"] == null ? null : json["kelurahan_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "nama_nasabah": namaNasabah == null ? null : namaNasabah,
    "username": username == null ? null : username,
    "almt_nasabah": almtNasabah == null ? null : almtNasabah,
    "no_hp": noHp == null ? null : noHp,
    "jenis_kelamin": jenisKelamin == null ? null : jenisKelamin,
    "tmpt_lahir": tmptLahir == null ? null : tmptLahir,
    "tgl_lahir": tglLahir == null ? null : tglLahir,
    "status": status == null ? null : status,
    "agama": agama == null ? null : agama,
    "pekerjaan": pekerjaan == null ? null : pekerjaan,
    "no_rekening": noRekening == null ? null : noRekening,
    "saldo": saldo == null ? null : saldo,
    "password": password == null ? null : password,
    "kelurahan_id": kelurahanId == null ? null : kelurahanId,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}
