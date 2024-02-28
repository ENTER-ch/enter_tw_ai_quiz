// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      questionText: json['questionText'] as String,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswerIndex: json['correctAnswerIndex'] as int,
      helpScreenTitle: json['helpScreenTitle'] as String?,
      helpScreenText: json['helpScreenText'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'questionText': instance.questionText,
      'answers': instance.answers,
      'correctAnswerIndex': instance.correctAnswerIndex,
      'helpScreenTitle': instance.helpScreenTitle,
      'helpScreenText': instance.helpScreenText,
      'image': instance.image,
    };
