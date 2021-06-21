// To parse this JSON data, do
//
//     final jenisSampah = jenisSampahFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

JenisSampah jenisSampahFromJson(String str) => JenisSampah.fromJson(json.decode(str));

String jenisSampahToJson(JenisSampah data) => json.encode(data.toJson());

class JenisSampah {
  JenisSampah({
    @required this.total,
    @required this.messages,
    @required this.data,
  });

  final int total;
  final String messages;
  final List<Datum> data;

  factory JenisSampah.fromJson(Map<String, dynamic> json) => JenisSampah(
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
    @required this.nmSampah,
    @required this.satuan,
    @required this.hrgJual,
    @required this.hrgBeli,
    @required this.stock,
    @required this.kategoriId,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.deletedAt,
  });

  final int id;
  final String nmSampah;
  final String satuan;
  final int hrgJual;
  final int hrgBeli;
  final int stock;
  final int kategoriId;
  final dynamic createdAt;
  final dynamic updatedAt;
  final dynamic deletedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"] == null ? null : json["id"],
    nmSampah: json["nm_sampah"] == null ? null : json["nm_sampah"],
    satuan: json["satuan"] == null ? null : json["satuan"],
    hrgJual: json["hrg_jual"] == null ? null : json["hrg_jual"],
    hrgBeli: json["hrg_beli"] == null ? null : json["hrg_beli"],
    stock: json["stock"] == null ? null : json["stock"],
    kategoriId: json["kategori_id"] == null ? null : json["kategori_id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "nm_sampah": nmSampah == null ? null : nmSampah,
    "satuan": satuan == null ? null : satuan,
    "hrg_jual": hrgJual == null ? null : hrgJual,
    "hrg_beli": hrgBeli == null ? null : hrgBeli,
    "stock": stock == null ? null : stock,
    "kategori_id": kategoriId == null ? null : kategoriId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "deleted_at": deletedAt,
  };
}
