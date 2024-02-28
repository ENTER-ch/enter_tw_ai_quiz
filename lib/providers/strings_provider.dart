import 'package:enter_quiz/providers/language_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'strings_provider.g.dart';

const strings = {
  'DE': {
    'help': 'Hilfe',
    'back': 'Zurück',
  },
  'EN': {
    'help': 'Help',
    'back': 'Back',
  },
  'FR': {
    'help': 'Aide',
    'back': 'Retour',
  },
};

@riverpod
Map<String, String> intlStrings(IntlStringsRef ref) {
  final language = ref.read(languageProvider);
  return strings[language]!;
}
