// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardStatusState {
  int get deck => throw _privateConstructorUsedError;
  bool get showChoice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardStatusStateCopyWith<CardStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStatusStateCopyWith<$Res> {
  factory $CardStatusStateCopyWith(
          CardStatusState value, $Res Function(CardStatusState) then) =
      _$CardStatusStateCopyWithImpl<$Res, CardStatusState>;
  @useResult
  $Res call({int deck, bool showChoice});
}

/// @nodoc
class _$CardStatusStateCopyWithImpl<$Res, $Val extends CardStatusState>
    implements $CardStatusStateCopyWith<$Res> {
  _$CardStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deck = null,
    Object? showChoice = null,
  }) {
    return _then(_value.copyWith(
      deck: null == deck
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as int,
      showChoice: null == showChoice
          ? _value.showChoice
          : showChoice // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardStatusStateImplCopyWith<$Res>
    implements $CardStatusStateCopyWith<$Res> {
  factory _$$CardStatusStateImplCopyWith(_$CardStatusStateImpl value,
          $Res Function(_$CardStatusStateImpl) then) =
      __$$CardStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int deck, bool showChoice});
}

/// @nodoc
class __$$CardStatusStateImplCopyWithImpl<$Res>
    extends _$CardStatusStateCopyWithImpl<$Res, _$CardStatusStateImpl>
    implements _$$CardStatusStateImplCopyWith<$Res> {
  __$$CardStatusStateImplCopyWithImpl(
      _$CardStatusStateImpl _value, $Res Function(_$CardStatusStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deck = null,
    Object? showChoice = null,
  }) {
    return _then(_$CardStatusStateImpl(
      deck: null == deck
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as int,
      showChoice: null == showChoice
          ? _value.showChoice
          : showChoice // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CardStatusStateImpl extends _CardStatusState {
  const _$CardStatusStateImpl({this.deck = 0, this.showChoice = false})
      : super._();

  @override
  @JsonKey()
  final int deck;
  @override
  @JsonKey()
  final bool showChoice;

  @override
  String toString() {
    return 'CardStatusState(deck: $deck, showChoice: $showChoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardStatusStateImpl &&
            (identical(other.deck, deck) || other.deck == deck) &&
            (identical(other.showChoice, showChoice) ||
                other.showChoice == showChoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deck, showChoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardStatusStateImplCopyWith<_$CardStatusStateImpl> get copyWith =>
      __$$CardStatusStateImplCopyWithImpl<_$CardStatusStateImpl>(
          this, _$identity);
}

abstract class _CardStatusState extends CardStatusState {
  const factory _CardStatusState({final int deck, final bool showChoice}) =
      _$CardStatusStateImpl;
  const _CardStatusState._() : super._();

  @override
  int get deck;
  @override
  bool get showChoice;
  @override
  @JsonKey(ignore: true)
  _$$CardStatusStateImplCopyWith<_$CardStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
