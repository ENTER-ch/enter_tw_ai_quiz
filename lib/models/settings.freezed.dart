// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizSettings _$QuizSettingsFromJson(Map<String, dynamic> json) {
  return _QuizSettings.fromJson(json);
}

/// @nodoc
mixin _$QuizSettings {
  Map<String, String> get quizTitle => throw _privateConstructorUsedError;
  Map<String, String> get quizSubtitle => throw _privateConstructorUsedError;
  Map<String, String> get winTitle => throw _privateConstructorUsedError;
  Map<String, String> get winSubtitle => throw _privateConstructorUsedError;
  List<String> get languages => throw _privateConstructorUsedError;
  Map<String, Quiz> get quizLanguages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizSettingsCopyWith<QuizSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSettingsCopyWith<$Res> {
  factory $QuizSettingsCopyWith(
          QuizSettings value, $Res Function(QuizSettings) then) =
      _$QuizSettingsCopyWithImpl<$Res, QuizSettings>;
  @useResult
  $Res call(
      {Map<String, String> quizTitle,
      Map<String, String> quizSubtitle,
      Map<String, String> winTitle,
      Map<String, String> winSubtitle,
      List<String> languages,
      Map<String, Quiz> quizLanguages});
}

/// @nodoc
class _$QuizSettingsCopyWithImpl<$Res, $Val extends QuizSettings>
    implements $QuizSettingsCopyWith<$Res> {
  _$QuizSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizTitle = null,
    Object? quizSubtitle = null,
    Object? winTitle = null,
    Object? winSubtitle = null,
    Object? languages = null,
    Object? quizLanguages = null,
  }) {
    return _then(_value.copyWith(
      quizTitle: null == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      quizSubtitle: null == quizSubtitle
          ? _value.quizSubtitle
          : quizSubtitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      winTitle: null == winTitle
          ? _value.winTitle
          : winTitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      winSubtitle: null == winSubtitle
          ? _value.winSubtitle
          : winSubtitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quizLanguages: null == quizLanguages
          ? _value.quizLanguages
          : quizLanguages // ignore: cast_nullable_to_non_nullable
              as Map<String, Quiz>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizSettingsImplCopyWith<$Res>
    implements $QuizSettingsCopyWith<$Res> {
  factory _$$QuizSettingsImplCopyWith(
          _$QuizSettingsImpl value, $Res Function(_$QuizSettingsImpl) then) =
      __$$QuizSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> quizTitle,
      Map<String, String> quizSubtitle,
      Map<String, String> winTitle,
      Map<String, String> winSubtitle,
      List<String> languages,
      Map<String, Quiz> quizLanguages});
}

/// @nodoc
class __$$QuizSettingsImplCopyWithImpl<$Res>
    extends _$QuizSettingsCopyWithImpl<$Res, _$QuizSettingsImpl>
    implements _$$QuizSettingsImplCopyWith<$Res> {
  __$$QuizSettingsImplCopyWithImpl(
      _$QuizSettingsImpl _value, $Res Function(_$QuizSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizTitle = null,
    Object? quizSubtitle = null,
    Object? winTitle = null,
    Object? winSubtitle = null,
    Object? languages = null,
    Object? quizLanguages = null,
  }) {
    return _then(_$QuizSettingsImpl(
      quizTitle: null == quizTitle
          ? _value._quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      quizSubtitle: null == quizSubtitle
          ? _value._quizSubtitle
          : quizSubtitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      winTitle: null == winTitle
          ? _value._winTitle
          : winTitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      winSubtitle: null == winSubtitle
          ? _value._winSubtitle
          : winSubtitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quizLanguages: null == quizLanguages
          ? _value._quizLanguages
          : quizLanguages // ignore: cast_nullable_to_non_nullable
              as Map<String, Quiz>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizSettingsImpl implements _QuizSettings {
  const _$QuizSettingsImpl(
      {required final Map<String, String> quizTitle,
      required final Map<String, String> quizSubtitle,
      required final Map<String, String> winTitle,
      required final Map<String, String> winSubtitle,
      required final List<String> languages,
      required final Map<String, Quiz> quizLanguages})
      : _quizTitle = quizTitle,
        _quizSubtitle = quizSubtitle,
        _winTitle = winTitle,
        _winSubtitle = winSubtitle,
        _languages = languages,
        _quizLanguages = quizLanguages;

  factory _$QuizSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizSettingsImplFromJson(json);

  final Map<String, String> _quizTitle;
  @override
  Map<String, String> get quizTitle {
    if (_quizTitle is EqualUnmodifiableMapView) return _quizTitle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quizTitle);
  }

  final Map<String, String> _quizSubtitle;
  @override
  Map<String, String> get quizSubtitle {
    if (_quizSubtitle is EqualUnmodifiableMapView) return _quizSubtitle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quizSubtitle);
  }

  final Map<String, String> _winTitle;
  @override
  Map<String, String> get winTitle {
    if (_winTitle is EqualUnmodifiableMapView) return _winTitle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_winTitle);
  }

  final Map<String, String> _winSubtitle;
  @override
  Map<String, String> get winSubtitle {
    if (_winSubtitle is EqualUnmodifiableMapView) return _winSubtitle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_winSubtitle);
  }

  final List<String> _languages;
  @override
  List<String> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final Map<String, Quiz> _quizLanguages;
  @override
  Map<String, Quiz> get quizLanguages {
    if (_quizLanguages is EqualUnmodifiableMapView) return _quizLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quizLanguages);
  }

  @override
  String toString() {
    return 'QuizSettings(quizTitle: $quizTitle, quizSubtitle: $quizSubtitle, winTitle: $winTitle, winSubtitle: $winSubtitle, languages: $languages, quizLanguages: $quizLanguages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other._quizTitle, _quizTitle) &&
            const DeepCollectionEquality()
                .equals(other._quizSubtitle, _quizSubtitle) &&
            const DeepCollectionEquality().equals(other._winTitle, _winTitle) &&
            const DeepCollectionEquality()
                .equals(other._winSubtitle, _winSubtitle) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._quizLanguages, _quizLanguages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizTitle),
      const DeepCollectionEquality().hash(_quizSubtitle),
      const DeepCollectionEquality().hash(_winTitle),
      const DeepCollectionEquality().hash(_winSubtitle),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_quizLanguages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSettingsImplCopyWith<_$QuizSettingsImpl> get copyWith =>
      __$$QuizSettingsImplCopyWithImpl<_$QuizSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizSettingsImplToJson(
      this,
    );
  }
}

abstract class _QuizSettings implements QuizSettings {
  const factory _QuizSettings(
      {required final Map<String, String> quizTitle,
      required final Map<String, String> quizSubtitle,
      required final Map<String, String> winTitle,
      required final Map<String, String> winSubtitle,
      required final List<String> languages,
      required final Map<String, Quiz> quizLanguages}) = _$QuizSettingsImpl;

  factory _QuizSettings.fromJson(Map<String, dynamic> json) =
      _$QuizSettingsImpl.fromJson;

  @override
  Map<String, String> get quizTitle;
  @override
  Map<String, String> get quizSubtitle;
  @override
  Map<String, String> get winTitle;
  @override
  Map<String, String> get winSubtitle;
  @override
  List<String> get languages;
  @override
  Map<String, Quiz> get quizLanguages;
  @override
  @JsonKey(ignore: true)
  _$$QuizSettingsImplCopyWith<_$QuizSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
