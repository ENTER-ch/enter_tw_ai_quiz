// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$externalStoragePathHash() =>
    r'9126f65a15d16e577f563f1c54655cd2f62ac28d';

/// See also [externalStoragePath].
@ProviderFor(externalStoragePath)
final externalStoragePathProvider = AutoDisposeProvider<String>.internal(
  externalStoragePath,
  name: r'externalStoragePathProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$externalStoragePathHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ExternalStoragePathRef = AutoDisposeProviderRef<String>;
String _$imageFileHash() => r'b8dec370cd3e4ae3ea4b3c3385486ddf8bfbd2b9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ImageFile extends BuildlessAutoDisposeAsyncNotifier<File?> {
  late final String? imageName;

  FutureOr<File?> build(
    String? imageName,
  );
}

/// See also [ImageFile].
@ProviderFor(ImageFile)
const imageFileProvider = ImageFileFamily();

/// See also [ImageFile].
class ImageFileFamily extends Family<AsyncValue<File?>> {
  /// See also [ImageFile].
  const ImageFileFamily();

  /// See also [ImageFile].
  ImageFileProvider call(
    String? imageName,
  ) {
    return ImageFileProvider(
      imageName,
    );
  }

  @override
  ImageFileProvider getProviderOverride(
    covariant ImageFileProvider provider,
  ) {
    return call(
      provider.imageName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'imageFileProvider';
}

/// See also [ImageFile].
class ImageFileProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ImageFile, File?> {
  /// See also [ImageFile].
  ImageFileProvider(
    String? imageName,
  ) : this._internal(
          () => ImageFile()..imageName = imageName,
          from: imageFileProvider,
          name: r'imageFileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageFileHash,
          dependencies: ImageFileFamily._dependencies,
          allTransitiveDependencies: ImageFileFamily._allTransitiveDependencies,
          imageName: imageName,
        );

  ImageFileProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageName,
  }) : super.internal();

  final String? imageName;

  @override
  FutureOr<File?> runNotifierBuild(
    covariant ImageFile notifier,
  ) {
    return notifier.build(
      imageName,
    );
  }

  @override
  Override overrideWith(ImageFile Function() create) {
    return ProviderOverride(
      origin: this,
      override: ImageFileProvider._internal(
        () => create()..imageName = imageName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageName: imageName,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ImageFile, File?> createElement() {
    return _ImageFileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageFileProvider && other.imageName == imageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ImageFileRef on AutoDisposeAsyncNotifierProviderRef<File?> {
  /// The parameter `imageName` of this provider.
  String? get imageName;
}

class _ImageFileProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ImageFile, File?>
    with ImageFileRef {
  _ImageFileProviderElement(super.provider);

  @override
  String? get imageName => (origin as ImageFileProvider).imageName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
