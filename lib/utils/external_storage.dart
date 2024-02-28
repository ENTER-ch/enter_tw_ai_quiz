import 'package:path_provider/path_provider.dart';

Future<String> getExternalStoragePath() async {
  final externalStorageDirs = await getExternalStorageDirectories();
  if (externalStorageDirs == null || externalStorageDirs.isEmpty) {
    throw Exception('No external storage found');
  }
  return externalStorageDirs.last.path;
}
