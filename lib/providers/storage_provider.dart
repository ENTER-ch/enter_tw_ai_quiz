import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_provider.g.dart';

@riverpod
String externalStoragePath(ExternalStoragePathRef ref) {
  throw UnimplementedError();
}

@riverpod
class ImageFile extends _$ImageFile {
  @override
  FutureOr<File?> build(String? imageName) async {
    if (imageName == null) return null;

    final externalStoragePath = ref.read(externalStoragePathProvider);
    final file = File('$externalStoragePath/$imageName');
    if (file.existsSync()) {
      print('File exists: $file');
      return file;
    } else {
      try {
        final assetBytes = await rootBundle.load('assets/images/$imageName');
        final tempDir = await getTemporaryDirectory();
        File file = await File('${tempDir.path}/$imageName.png').create();
        file.writeAsBytesSync(assetBytes.buffer.asUint8List());
        return file;
      } catch (e) {
        print('Error: $e');
        return null;
      }
    }
  }
}
