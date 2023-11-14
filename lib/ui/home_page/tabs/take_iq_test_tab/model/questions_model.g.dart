// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionsResponse _$QuestionsResponseFromJson(Map<String, dynamic> json) =>
    QuestionsResponse(
      question: json['question_text'] as String? ?? '',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => Options.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$QuestionsResponseToJson(QuestionsResponse instance) =>
    <String, dynamic>{
      'question_text': instance.question,
      'options': instance.options.map((e) => e.toJson()).toList(),
    };

Options _$OptionsFromJson(Map<String, dynamic> json) => Options(
      option: json['option_text'] as String? ?? '',
      isCorrect: json['is_correct'] as bool,
    );

Map<String, dynamic> _$OptionsToJson(Options instance) => <String, dynamic>{
      'option_text': instance.option,
      'is_correct': instance.isCorrect,
    };
