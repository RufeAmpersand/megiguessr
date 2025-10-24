// ignore_for_file: non_constant_identifier_names

import "package:freezed_annotation/freezed_annotation.dart";

part "megido_entity.freezed.dart";
part "megido_entity.g.dart";

@freezed
sealed class Megido with _$Megido {
  // series	number	name	style	class	gauge	obtain
  // implement_day	gender	cv	trait	masseffect is_regenerate

  factory Megido({
    required Series series,
    required int number,
    required String name,
    required Style style,
    required int gauge,
    required Obtain obtain,
    required DateTime implement_day,
    required Gender gender,
    required String cv,
    required String trait,
    required String masseffect,
    required bool is_regenerate,
  }) = _Megido;

  factory Megido.fromJson(Map<String, dynamic> json) => _$MegidoFromJson(json);
}

@JsonEnum(valueField: "value")
enum Series {
  ancestor("祖"),
  truely("真"),
  inheritance("継"),
  evening("宵");

  final String value;

  const Series(this.value);
}

@JsonEnum(valueField: "value")
enum Style {
  fighter("ファイター"),
  trooper("トルーパー"),
  sniper("スナイパー");

  final String value;

  const Style(this.value);
}

@JsonEnum(valueField: "value")
enum Obtain {
  normal("通常"),
  event("イベント"),
  gacha("ガチャ"),
  terminus("テルミナス"),
  singularity("シンギュラリティ");

  final String value;

  const Obtain(this.value);
}

@JsonEnum(valueField: "value")
enum Gender {
  male("男"),
  female("女");

  final String value;

  const Gender(this.value);
}
