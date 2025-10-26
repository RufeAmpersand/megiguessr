import "package:freezed_annotation/freezed_annotation.dart";

part "stage_condition_entity.freezed.dart";
part "stage_condition_entity.g.dart";

@freezed
sealed class StageCondition with _$StageCondition {
  factory StageCondition() = _StageCondition;

  factory StageCondition.fromJson(Map<String, dynamic> json) =>
      _$StageConditionFromJson(json);
}
