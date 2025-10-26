import "package:freezed_annotation/freezed_annotation.dart";
import "package:megiguessr/entity/megido_entity.dart";
import "package:megiguessr/entity/question_visibility_entity.dart";

part "stage_question_entity.freezed.dart";
part "stage_question_entity.g.dart";

@freezed
sealed class StageQuestion with _$StageQuestion {
  factory StageQuestion({
    required Megido answer,
    required Megido maskData,
    required VisibilityData visibilityData,
  }) = _StageQuestion;

  factory StageQuestion.fromJson(Map<String, dynamic> json) =>
      _$StageQuestionFromJson(json);
}

extension QuestionToString on StageQuestion {
  String getMemberToHintString(MegidoMember member) {
    return getMaskOrData(member, visibilityData.getMemberToVisibility(member));
  }

  String getMaskOrData(MegidoMember member, Visibility visiblility) {
    switch (visiblility) {
      case Visibility.visible:
        return answer.getMemberInVisibleString(member);
      case Visibility.masked:
        return maskData.getMemberInVisibleString(member);
      case Visibility.hidden:
        if (member == MegidoMember.series) {
          return "？";
        } else if (member == MegidoMember.number) {
          return "？？";
        }
        return "？？？";
    }
  }
}
