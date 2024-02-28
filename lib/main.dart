import 'dart:io';

import 'package:enter_quiz/components/quiz_background.dart';
import 'package:enter_quiz/models/settings.dart';
import 'package:enter_quiz/providers/quiz_settings_provider.dart';
import 'package:enter_quiz/providers/storage_provider.dart';
import 'package:enter_quiz/screens/home_screen.dart';
import 'package:enter_quiz/theme.dart';
import 'package:enter_quiz/utils/external_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // if (Platform.isAndroid) {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  // }

  Uint8List bytes;
  final externalStoragePath = "/"; // await getExternalStoragePath();
  // print('externalStoragePath: $externalStoragePath');

  // if (kDebugMode) {
  //   ByteData data = await rootBundle.load('assets/xls/quiz_data.xlsx');
  //   bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  // } else {
  //   final file = File('$externalStoragePath/quiz_data.xlsx');

  //   if (!file.existsSync()) {
  //     final data = await rootBundle.load('assets/xls/quiz_data.xlsx');
  //     final bytes =
  //         data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  //     await file.writeAsBytes(bytes);
  //   }

  //   ByteData data =
  //       await file.readAsBytes().then((bytes) => bytes.buffer.asByteData());
  //   bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  // }

  ByteData data = await rootBundle.load('assets/xls/quiz_data.xlsx');
  bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

  final quizSettings = QuizSettings.fromExcel(bytes);

  runApp(
    ProviderScope(
      overrides: [
        quizSettingsProvider.overrideWithValue(quizSettings),
        externalStoragePathProvider.overrideWithValue(externalStoragePath),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        width: 1920,
        height: 1080,
        child: ScreenUtilInit(
          designSize: const Size(1920, 1080),
          minTextAdapt: true,
          builder: (_, child) => MaterialApp(
              title: 'AI Quiz',
              debugShowCheckedModeBanner: false,
              theme: enterTheme,
              home: const HomeScreen(),
              builder: (context, child) {
                return Scaffold(
                  backgroundColor: Colors.black,
                  body: Stack(
                    children: [
                      const QuizBackground(),
                      child!,
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
