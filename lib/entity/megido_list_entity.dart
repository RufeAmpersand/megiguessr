// ignore_for_file: non_constant_identifier_names

import "package:freezed_annotation/freezed_annotation.dart";
import "package:megiguessr/entity/megido_entity.dart";

part "megido_list_entity.freezed.dart";
part "megido_list_entity.g.dart";

@freezed
sealed class MegidoList with _$MegidoList {
  factory MegidoList({required List<Megido> megido_list}) = _MegidoList;

  factory MegidoList.fromJson(Map<String, Object?> json) =>
      _$MegidoListFromJson(json);
}
