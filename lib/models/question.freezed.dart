// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get questionText => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  int get correctAnswerIndex => throw _privateConstructorUsedError;
  String? get helpScreenTitle => throw _privateConstructorUsedError;
  String? get helpScreenText => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String questionText,
      List<String> answers,
      int correctAnswerIndex,
      String? helpScreenTitle,
      String? helpScreenText,
      String? image});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionText = null,
    Object? answers = null,
    Object? correctAnswerIndex = null,
    Object? helpScreenTitle = freezed,
    Object? helpScreenText = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswerIndex: null == correctAnswerIndex
          ? _value.correctAnswerIndex
          : correctAnswerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      helpScreenTitle: freezed == helpScreenTitle
          ? _value.helpScreenTitle
          : helpScreenTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      helpScreenText: freezed == helpScreenText
          ? _value.helpScreenText
          : helpScreenText // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionText,
      List<String> answers,
      int correctAnswerIndex,
      String? helpScreenTitle,
      String? helpScreenText,
      String? image});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionText = null,
    Object? answers = null,
    Object? correctAnswerIndex = null,
    Object? helpScreenTitle = freezed,
    Object? helpScreenText = freezed,
    Object? image = freezed,
  }) {
    return _then(_$QuestionImpl(
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswerIndex: null == correctAnswerIndex
          ? _value.correctAnswerIndex
          : correctAnswerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      helpScreenTitle: freezed == helpScreenTitle
          ? _value.helpScreenTitle
          : helpScreenTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      helpScreenText: freezed == helpScreenText
          ? _value.helpScreenText
          : helpScreenText // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {required this.questionText,
      required final List<String> answers,
      required this.correctAnswerIndex,
      this.helpScreenTitle,
      this.helpScreenText,
      this.image})
      : _answers = answers;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final String questionText;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final int correctAnswerIndex;
  @override
  final String? helpScreenTitle;
  @override
  final String? helpScreenText;
  @override
  final String? image;

  @override
  String toString() {
    return 'Question(questionText: $questionText, answers: $answers, correctAnswerIndex: $correctAnswerIndex, helpScreenTitle: $helpScreenTitle, helpScreenText: $helpScreenText, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.correctAnswerIndex, correctAnswerIndex) ||
                other.correctAnswerIndex == correctAnswerIndex) &&
            (identical(other.helpScreenTitle, helpScreenTitle) ||
                other.helpScreenTitle == helpScreenTitle) &&
            (identical(other.helpScreenText, helpScreenText) ||
                other.helpScreenText == helpScreenText) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionText,
      const DeepCollectionEquality().hash(_answers),
      correctAnswerIndex,
      helpScreenTitle,
      helpScreenText,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {required final String questionText,
      required final List<String> answers,
      required final int correctAnswerIndex,
      final String? helpScreenTitle,
      final String? helpScreenText,
      final String? image}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  String get questionText;
  @override
  List<String> get answers;
  @override
  int get correctAnswerIndex;
  @override
  String? get helpScreenTitle;
  @override
  String? get helpScreenText;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
