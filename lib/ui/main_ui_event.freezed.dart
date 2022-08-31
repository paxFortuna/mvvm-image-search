// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainUiEvent {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainUiEventCopyWith<MainUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainUiEventCopyWith<$Res> {
  factory $MainUiEventCopyWith(
          MainUiEvent value, $Res Function(MainUiEvent) then) =
      _$MainUiEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MainUiEventCopyWithImpl<$Res> implements $MainUiEventCopyWith<$Res> {
  _$MainUiEventCopyWithImpl(this._value, this._then);

  final MainUiEvent _value;
  // ignore: unused_field
  final $Res Function(MainUiEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ShowSnackBarCopyWith<$Res>
    implements $MainUiEventCopyWith<$Res> {
  factory _$$ShowSnackBarCopyWith(
          _$ShowSnackBar value, $Res Function(_$ShowSnackBar) then) =
      __$$ShowSnackBarCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarCopyWithImpl<$Res> extends _$MainUiEventCopyWithImpl<$Res>
    implements _$$ShowSnackBarCopyWith<$Res> {
  __$$ShowSnackBarCopyWithImpl(
      _$ShowSnackBar _value, $Res Function(_$ShowSnackBar) _then)
      : super(_value, (v) => _then(v as _$ShowSnackBar));

  @override
  _$ShowSnackBar get _value => super._value as _$ShowSnackBar;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShowSnackBar(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBar implements ShowSnackBar {
  const _$ShowSnackBar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MainUiEvent.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBar &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ShowSnackBarCopyWith<_$ShowSnackBar> get copyWith =>
      __$$ShowSnackBarCopyWithImpl<_$ShowSnackBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) showDialog,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBar implements MainUiEvent {
  const factory ShowSnackBar(final String message) = _$ShowSnackBar;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ShowSnackBarCopyWith<_$ShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowDialogCopyWith<$Res>
    implements $MainUiEventCopyWith<$Res> {
  factory _$$ShowDialogCopyWith(
          _$ShowDialog value, $Res Function(_$ShowDialog) then) =
      __$$ShowDialogCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$ShowDialogCopyWithImpl<$Res> extends _$MainUiEventCopyWithImpl<$Res>
    implements _$$ShowDialogCopyWith<$Res> {
  __$$ShowDialogCopyWithImpl(
      _$ShowDialog _value, $Res Function(_$ShowDialog) _then)
      : super(_value, (v) => _then(v as _$ShowDialog));

  @override
  _$ShowDialog get _value => super._value as _$ShowDialog;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShowDialog(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowDialog implements ShowDialog {
  const _$ShowDialog(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MainUiEvent.showDialog(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDialog &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ShowDialogCopyWith<_$ShowDialog> get copyWith =>
      __$$ShowDialogCopyWithImpl<_$ShowDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) showDialog,
  }) {
    return showDialog(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
  }) {
    return showDialog?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(ShowDialog value) showDialog,
  }) {
    return showDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
  }) {
    return showDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(ShowDialog value)? showDialog,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(this);
    }
    return orElse();
  }
}

abstract class ShowDialog implements MainUiEvent {
  const factory ShowDialog(final String message) = _$ShowDialog;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ShowDialogCopyWith<_$ShowDialog> get copyWith =>
      throw _privateConstructorUsedError;
}
