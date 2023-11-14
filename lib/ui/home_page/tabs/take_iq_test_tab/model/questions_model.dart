import 'package:json_annotation/json_annotation.dart';

part 'questions_model.g.dart';

@JsonSerializable(includeIfNull: true, explicitToJson: true)
class QuestionsResponse {
  @JsonKey(defaultValue: '', name: 'question_text')
  final String question;
  @JsonKey(defaultValue: [])
  final List<Options> options;

  QuestionsResponse({
    required this.question,
    required this.options,
  });

  factory QuestionsResponse.fromJson(Map<String, dynamic> jsonData) => _$QuestionsResponseFromJson(jsonData);
  Map<String, dynamic> toJson() => _$QuestionsResponseToJson(this);
}

@JsonSerializable(includeIfNull: true, explicitToJson: true)
class Options {
  @JsonKey(defaultValue: '', name: 'option_text')
  final String option;
  @JsonKey(name: 'is_correct')
  final bool isCorrect;

  Options({
    required this.option,
    required this.isCorrect,
  });

  factory Options.fromJson(Map<String, dynamic> jsonData) => _$OptionsFromJson(jsonData);
  Map<String, dynamic> toJson() => _$OptionsToJson(this);
}
