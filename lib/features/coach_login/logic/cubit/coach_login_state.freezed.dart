// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoachLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachLoginResponse response) loginSuccess,
    required TResult Function(DioException apiError) loginFailure,
    required TResult Function(int usrId) cacheUserId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachLoginResponse response)? loginSuccess,
    TResult? Function(DioException apiError)? loginFailure,
    TResult? Function(int usrId)? cacheUserId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachLoginResponse response)? loginSuccess,
    TResult Function(DioException apiError)? loginFailure,
    TResult Function(int usrId)? cacheUserId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
    required TResult Function(CacheUserId value) cacheUserId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
    TResult? Function(CacheUserId value)? cacheUserId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    TResult Function(CacheUserId value)? cacheUserId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachLoginStateCopyWith<$Res> {
  factory $CoachLoginStateCopyWith(
          CoachLoginState value, $Res Function(CoachLoginState) then) =
      _$CoachLoginStateCopyWithImpl<$Res, CoachLoginState>;
}

/// @nodoc
class _$CoachLoginStateCopyWithImpl<$Res, $Val extends CoachLoginState>
    implements $CoachLoginStateCopyWith<$Res> {
  _$CoachLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoachLoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CoachLoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachLoginResponse response) loginSuccess,
    required TResult Function(DioException apiError) loginFailure,
    required TResult Function(int usrId) cacheUserId,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachLoginResponse response)? loginSuccess,
    TResult? Function(DioException apiError)? loginFailure,
    TResult? Function(int usrId)? cacheUserId,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachLoginResponse response)? loginSuccess,
    TResult Function(DioException apiError)? loginFailure,
    TResult Function(int usrId)? cacheUserId,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
    required TResult Function(CacheUserId value) cacheUserId,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
    TResult? Function(CacheUserId value)? cacheUserId,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    TResult Function(CacheUserId value)? cacheUserId,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CoachLoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CoachLoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CoachLoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachLoginResponse response) loginSuccess,
    required TResult Function(DioException apiError) loginFailure,
    required TResult Function(int usrId) cacheUserId,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachLoginResponse response)? loginSuccess,
    TResult? Function(DioException apiError)? loginFailure,
    TResult? Function(int usrId)? cacheUserId,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachLoginResponse response)? loginSuccess,
    TResult Function(DioException apiError)? loginFailure,
    TResult Function(int usrId)? cacheUserId,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
    required TResult Function(CacheUserId value) cacheUserId,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
    TResult? Function(CacheUserId value)? cacheUserId,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    TResult Function(CacheUserId value)? cacheUserId,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CoachLoginState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoachLoginResponse response});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$CoachLoginStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$LoginSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CoachLoginResponse,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl implements LoginSuccess {
  const _$LoginSuccessImpl({required this.response});

  @override
  final CoachLoginResponse response;

  @override
  String toString() {
    return 'CoachLoginState.loginSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachLoginResponse response) loginSuccess,
    required TResult Function(DioException apiError) loginFailure,
    required TResult Function(int usrId) cacheUserId,
  }) {
    return loginSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachLoginResponse response)? loginSuccess,
    TResult? Function(DioException apiError)? loginFailure,
    TResult? Function(int usrId)? cacheUserId,
  }) {
    return loginSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachLoginResponse response)? loginSuccess,
    TResult Function(DioException apiError)? loginFailure,
    TResult Function(int usrId)? cacheUserId,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
    required TResult Function(CacheUserId value) cacheUserId,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
    TResult? Function(CacheUserId value)? cacheUserId,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    TResult Function(CacheUserId value)? cacheUserId,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements CoachLoginState {
  const factory LoginSuccess({required final CoachLoginResponse response}) =
      _$LoginSuccessImpl;

  CoachLoginResponse get response;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
          _$LoginFailureImpl value, $Res Function(_$LoginFailureImpl) then) =
      __$$LoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DioException apiError});
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$CoachLoginStateCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl _value, $Res Function(_$LoginFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiError = null,
  }) {
    return _then(_$LoginFailureImpl(
      apiError: null == apiError
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$LoginFailureImpl implements LoginFailure {
  const _$LoginFailureImpl({required this.apiError});

  @override
  final DioException apiError;

  @override
  String toString() {
    return 'CoachLoginState.loginFailure(apiError: $apiError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<_$LoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachLoginResponse response) loginSuccess,
    required TResult Function(DioException apiError) loginFailure,
    required TResult Function(int usrId) cacheUserId,
  }) {
    return loginFailure(apiError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachLoginResponse response)? loginSuccess,
    TResult? Function(DioException apiError)? loginFailure,
    TResult? Function(int usrId)? cacheUserId,
  }) {
    return loginFailure?.call(apiError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachLoginResponse response)? loginSuccess,
    TResult Function(DioException apiError)? loginFailure,
    TResult Function(int usrId)? cacheUserId,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(apiError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
    required TResult Function(CacheUserId value) cacheUserId,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
    TResult? Function(CacheUserId value)? cacheUserId,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    TResult Function(CacheUserId value)? cacheUserId,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class LoginFailure implements CoachLoginState {
  const factory LoginFailure({required final DioException apiError}) =
      _$LoginFailureImpl;

  DioException get apiError;
  @JsonKey(ignore: true)
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheUserIdImplCopyWith<$Res> {
  factory _$$CacheUserIdImplCopyWith(
          _$CacheUserIdImpl value, $Res Function(_$CacheUserIdImpl) then) =
      __$$CacheUserIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int usrId});
}

/// @nodoc
class __$$CacheUserIdImplCopyWithImpl<$Res>
    extends _$CoachLoginStateCopyWithImpl<$Res, _$CacheUserIdImpl>
    implements _$$CacheUserIdImplCopyWith<$Res> {
  __$$CacheUserIdImplCopyWithImpl(
      _$CacheUserIdImpl _value, $Res Function(_$CacheUserIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usrId = null,
  }) {
    return _then(_$CacheUserIdImpl(
      usrId: null == usrId
          ? _value.usrId
          : usrId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CacheUserIdImpl implements CacheUserId {
  const _$CacheUserIdImpl({required this.usrId});

  @override
  final int usrId;

  @override
  String toString() {
    return 'CoachLoginState.cacheUserId(usrId: $usrId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheUserIdImpl &&
            (identical(other.usrId, usrId) || other.usrId == usrId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usrId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheUserIdImplCopyWith<_$CacheUserIdImpl> get copyWith =>
      __$$CacheUserIdImplCopyWithImpl<_$CacheUserIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoachLoginResponse response) loginSuccess,
    required TResult Function(DioException apiError) loginFailure,
    required TResult Function(int usrId) cacheUserId,
  }) {
    return cacheUserId(usrId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoachLoginResponse response)? loginSuccess,
    TResult? Function(DioException apiError)? loginFailure,
    TResult? Function(int usrId)? cacheUserId,
  }) {
    return cacheUserId?.call(usrId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoachLoginResponse response)? loginSuccess,
    TResult Function(DioException apiError)? loginFailure,
    TResult Function(int usrId)? cacheUserId,
    required TResult orElse(),
  }) {
    if (cacheUserId != null) {
      return cacheUserId(usrId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
    required TResult Function(CacheUserId value) cacheUserId,
  }) {
    return cacheUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
    TResult? Function(CacheUserId value)? cacheUserId,
  }) {
    return cacheUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    TResult Function(CacheUserId value)? cacheUserId,
    required TResult orElse(),
  }) {
    if (cacheUserId != null) {
      return cacheUserId(this);
    }
    return orElse();
  }
}

abstract class CacheUserId implements CoachLoginState {
  const factory CacheUserId({required final int usrId}) = _$CacheUserIdImpl;

  int get usrId;
  @JsonKey(ignore: true)
  _$$CacheUserIdImplCopyWith<_$CacheUserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
