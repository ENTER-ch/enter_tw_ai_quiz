import 'dart:typed_data';

import 'package:enter_quiz/models/quiz.dart';
import 'package:excel/excel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class QuizSettings with _$QuizSettings {
  const factory QuizSettings({
    required Map<String, String> quizTitle,
    required Map<String, String> quizSubtitle,
    required Map<String, String> winTitle,
    required Map<String, String> winSubtitle,
    required List<String> languages,
    required Map<String, Quiz> quizLanguages,
  }) = _QuizSettings;

  factory QuizSettings.fromJson(Map<String, dynamic> json) =>
      _$QuizSettingsFromJson(json);

  factory QuizSettings.fromExcel(Uint8List byteData) {
    final languages = ['DE', 'EN', 'FR'];

    var excel = Excel.decodeBytes(byteData);

    final settingsTable = excel.tables['SETTINGS']!;
    final Map<String, String> settings = {};
    for (var i = 0; i < settingsTable.maxRows; i++) {
      final key = settingsTable
          .cell(CellIndex.indexByColumnRow(rowIndex: i, columnIndex: 0))
          .value;
      final value = settingsTable
          .cell(CellIndex.indexByColumnRow(rowIndex: i, columnIndex: 1))
          .value;
      if (key != null && value != null) {
        settings[key.toString()] = value.toString();
      }
    }
    print(settings);

    final quizLanguages = <String, Quiz>{};
    final availableLanguages = <String>[];
    for (var language in languages) {
      final quizTable = excel.tables[language];
      if (quizTable == null) {
        print('No table for language $language');
        continue;
      }
      final quiz = Quiz.fromExcel(quizTable);
      quizLanguages[language] = quiz;
      availableLanguages.add(language);
    }

    return QuizSettings(
      quizLanguages: quizLanguages,
      languages: availableLanguages,
      quizTitle: {
        'DE': settings['TITLE_DE'] ?? '',
        'EN': settings['TITLE_EN'] ?? '',
        'FR': settings['TITLE_FR'] ?? '',
      },
      quizSubtitle: {
        'DE': settings['SUBTITLE_DE'] ?? '',
        'EN': settings['SUBTITLE_EN'] ?? '',
        'FR': settings['SUBTITLE_FR'] ?? '',
      },
      winTitle: {
        'DE': settings['WIN_TITLE_DE'] ?? '',
        'EN': settings['WIN_TITLE_EN'] ?? '',
        'FR': settings['WIN_TITLE_FR'] ?? '',
      },
      winSubtitle: {
        'DE': settings['WIN_SUBTITLE_DE'] ?? '',
        'EN': settings['WIN_SUBTITLE_EN'] ?? '',
        'FR': settings['WIN_SUBTITLE_FR'] ?? '',
      },
    );
  }
}
