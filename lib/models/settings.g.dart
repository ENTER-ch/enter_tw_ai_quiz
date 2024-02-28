// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizSettingsImpl _$$QuizSettingsImplFromJson(Map<String, dynamic> json) =>
    _$QuizSettingsImpl(
      quizTitle: Map<String, String>.from(json['quizTitle'] as Map),
      quizSubtitle: Map<String, String>.from(json['quizSubtitle'] as Map),
      winTitle: Map<String, String>.from(json['winTitle'] as Map),
      winSubtitle: Map<String, String>.from(json['winSubtitle'] as Map),
      languages:
          (json['languages'] as List<dynamic>).map((e) => e as String).toList(),
      quizLanguages: (json['quizLanguages'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Quiz.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$QuizSettingsImplToJson(_$QuizSettingsImpl instance) =>
    <String, dynamic>{
      'quizTitle': instance.quizTitle,
      'quizSubtitle': instance.quizSubtitle,
      'winTitle': instance.winTitle,
      'winSubtitle': instance.winSubtitle,
      'languages': instance.languages,
      'quizLanguages': instance.quizLanguages,
    };
