import "package:freezed_annotation/freezed_annotation.dart";
import "package:megiguessr/entity/stage_condition_entity.dart";
import "package:megiguessr/entity/stage_question_entity.dart";

part "stage_entity.freezed.dart";
part "stage_entity.g.dart";

@freezed
sealed class Stage with _$Stage {
  factory Stage({
    required StageQuestion question,
    required StageCondition condition,
  }) = _Stage;

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}
