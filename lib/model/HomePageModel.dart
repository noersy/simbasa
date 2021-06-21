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
    @required this.chart,
    @required this.bank,
    @required this.data,
    @required this.setoran,
  });

  final int total;
  final String messages;
  final Chart chart;
  final Bank bank;
  final List<Datum> data;
  final List<Setoran> setoran;

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
    total: json["total"] == null ? null : json["total"],
    messages: json["messages"] == null ? null : json["messages"],
    chart: json["chart"] == null ? null : Chart.fromJson(json["chart"]),
    bank: json["bank"] == null ? null : Bank.fromJson(json["bank"]),
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    setoran: json["setoran"] == null ? null : List<Setoran>.from(json["setoran"].map((x) => Setoran.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total == null ? null : total,
    "messages": messages == null ? null : messages,
    "chart": chart == null ? null : chart.toJson(),
    "bank": bank == null ? null : bank.toJson(),
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    "setoran": setoran == null ? null : List<dynamic>.from(setoran.map((x) => x.toJson())),
  };
}

class Bank {
  Bank({
    @required this.id,
    @required this.nmBanksampah,
    @required this.almtBanksampah,
    @required this.telp,
    @required this.tglBerdiri,
    @required this.jenisSampah,
    @required this.nmPenggurus,
    @required this.jmlKaryawan,
    @required this.jmlNasabah,
    @required this.jmlSimpanan,
    @required this.email,
    @required this.kelurahanId,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.deletedAt,
  });

  final int id;
  final String nmBanksampah;
  final String almtBanksampah;
  final String telp;
  final DateTime tglBerdiri;
  final String jenisSampah;
  final String nmPenggurus;
  final int jmlKaryawan;
  final int jmlNasabah;
  final int jmlSimpanan;
  final String email;
  final int kelurahanId;
  final dynamic createdAt;
  final dynamic updatedAt;
  final dynamic deletedAt;

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
    id: json["id"] == null ? null : json["id"],
    nmBanksampah: json["nm_banksampah"] == null ? null : json["nm_banksampah"],
    almtBanksampah: json["almt_banksampah"] == null ? null : json["almt_banksampah"],
    telp: json["telp"] == null ? null : json["telp"],
    tglBerdiri: json["tgl_berdiri"] == null ? null : DateTime.parse(json["tgl_berdiri"]),
    jenisSampah: json["jenis_sampah"] == null ? null : json["jenis_sampah"],
    nmPenggurus: json["nm_penggurus"] == null ? null : json["nm_penggurus"],
    jmlKaryawan: json["jml_karyawan"] == null ? null : json["jml_karyawan"],
    jmlNasabah: json["jml_nasabah"] == null ? null : json["jml_nasabah"],
    jmlSimpanan: json["jml_simpanan"] == null ? null : json["jml_simpanan"],
    email: json["email"] == null ? null : json["email"],
    kelurahanId: json["kelurahan_id"] == null ? null : json["kelurahan_id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "nm_banksampah": nmBanksampah == null ? null : nmBanksampah,
    "almt_banksampah": almtBanksampah == null ? null : almtBanksampah,
    "telp": telp == null ? null : telp,
    "tgl_berdiri": tglBerdiri == null ? null : tglBerdiri.toIso8601String(),
    "jenis_sampah": jenisSampah == null ? null : jenisSampah,
    "nm_penggurus": nmPenggurus == null ? null : nmPenggurus,
    "jml_karyawan": jmlKaryawan == null ? null : jmlKaryawan,
    "jml_nasabah": jmlNasabah == null ? null : jmlNasabah,
    "jml_simpanan": jmlSimpanan == null ? null : jmlSimpanan,
    "email": email == null ? null : email,
    "kelurahan_id": kelurahanId == null ? null : kelurahanId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "deleted_at": deletedAt,
  };
}

class Chart {
  Chart({
    @required this.spot1,
    @required this.spot2,
    @required this.spot3,
    @required this.spot4,
    @required this.spot5,
    @required this.spot6,
    @required this.spot7,
  });

  final int spot1;
  final int spot2;
  final int spot3;
  final int spot4;
  final int spot5;
  final int spot6;
  final int spot7;

  factory Chart.fromJson(Map<String, dynamic> json) => Chart(
    spot1: json["spot1"] == null ? null : json["spot1"],
    spot2: json["spot2"] == null ? null : json["spot2"],
    spot3: json["spot3"] == null ? null : json["spot3"],
    spot4: json["spot4"] == null ? null : json["spot4"],
    spot5: json["spot5"] == null ? null : json["spot5"],
    spot6: json["spot6"] == null ? null : json["spot6"],
    spot7: json["spot7"] == null ? null : json["spot7"],
  );

  Map<String, dynamic> toJson() => {
    "spot1": spot1 == null ? null : spot1,
    "spot2": spot2 == null ? null : spot2,
    "spot3": spot3 == null ? null : spot3,
    "spot4": spot4 == null ? null : spot4,
    "spot5": spot5 == null ? null : spot5,
    "spot6": spot6 == null ? null : spot6,
    "spot7": spot7 == null ? null : spot7,
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

class Setoran {
  Setoran({
    @required this.id,
    @required this.tglSetor,
    @required this.totalSetor,
    @required this.nasabahId,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.deletedAt,
  });

  final int id;
  final DateTime tglSetor;
  final int totalSetor;
  final int nasabahId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;

  factory Setoran.fromJson(Map<String, dynamic> json) => Setoran(
    id: json["id"] == null ? null : json["id"],
    tglSetor: json["tgl_setor"] == null ? null : DateTime.parse(json["tgl_setor"]),
    totalSetor: json["total_setor"] == null ? null : json["total_setor"],
    nasabahId: json["nasabah_id"] == null ? null : json["nasabah_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "tgl_setor": tglSetor == null ? null : tglSetor.toIso8601String(),
    "total_setor": totalSetor == null ? null : totalSetor,
    "nasabah_id": nasabahId == null ? null : nasabahId,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}
