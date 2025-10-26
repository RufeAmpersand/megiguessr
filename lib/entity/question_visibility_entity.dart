// ignore_for_file: non_constant_identifier_names

import "package:freezed_annotation/freezed_annotation.dart";
import "package:megiguessr/entity/megido_entity.dart";

part "question_visibility_entity.freezed.dart";
part "question_visibility_entity.g.dart";

@freezed
sealed class VisibilityData with _$VisibilityData {
  factory VisibilityData({
    required Visibility series,
    required Visibility number,
    required Visibility name,
    required Visibility style,
    required Visibility megidoClass,
    required Visibility gauge,
    required Visibility obtain,
    required Visibility implement_day,
    required Visibility gender,
    required Visibility cv,
    required Visibility trait,
    required Visibility masseffect,
    required Visibility is_regenerate,
  }) = _VisibilityData;

  factory VisibilityData.fromJson(Map<String, dynamic> json) =>
      _$VisibilityDataFromJson(json);
}

extension VisibilityDataUtil on VisibilityData {
  Visibility getMemberToVisibility(MegidoMember member) {
    switch (member) {
      case MegidoMember.series:
        return series;
      case MegidoMember.number:
        return number;
      case MegidoMember.name:
        return name;
      case MegidoMember.style:
        return style;
      case MegidoMember.megidoClass:
        return megidoClass;
      case MegidoMember.gauge:
        return gauge;
      case MegidoMember.obtain:
        return gauge;
      case MegidoMember.implementDay:
        return implement_day;
      case MegidoMember.gender:
        return gender;
      case MegidoMember.cv:
        return cv;
      case MegidoMember.trait:
        return trait;
      case MegidoMember.masseffect:
        return masseffect;
      case MegidoMember.isRegenerate:
        return is_regenerate;
    }
  }
}

@JsonEnum(valueField: "value")
enum Visibility {
  visible("visible"),
  masked("masked"),
  hidden("hidden");

  final String value;

  const Visibility(this.value);
}
