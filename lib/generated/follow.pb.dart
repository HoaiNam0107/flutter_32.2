//
//  Generated code. Do not modify.
//  source: follow.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FollowRequest extends $pb.GeneratedMessage {
  factory FollowRequest({
    $core.String? followerId,
    $core.String? followedId,
  }) {
    final result = create();
    if (followerId != null) result.followerId = followerId;
    if (followedId != null) result.followedId = followedId;
    return result;
  }

  FollowRequest._();

  factory FollowRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory FollowRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'follow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'followerId')
    ..aOS(2, _omitFieldNames ? '' : 'followedId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowRequest clone() => FollowRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowRequest copyWith(void Function(FollowRequest) updates) => super.copyWith((message) => updates(message as FollowRequest)) as FollowRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowRequest create() => FollowRequest._();
  @$core.override
  FollowRequest createEmptyInstance() => create();
  static $pb.PbList<FollowRequest> createRepeated() => $pb.PbList<FollowRequest>();
  @$core.pragma('dart2js:noInline')
  static FollowRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowRequest>(create);
  static FollowRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get followerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set followerId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFollowerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFollowerId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get followedId => $_getSZ(1);
  @$pb.TagNumber(2)
  set followedId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFollowedId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollowedId() => $_clearField(2);
}

class FollowResponse extends $pb.GeneratedMessage {
  factory FollowResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    return result;
  }

  FollowResponse._();

  factory FollowResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory FollowResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'follow'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowResponse clone() => FollowResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowResponse copyWith(void Function(FollowResponse) updates) => super.copyWith((message) => updates(message as FollowResponse)) as FollowResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowResponse create() => FollowResponse._();
  @$core.override
  FollowResponse createEmptyInstance() => create();
  static $pb.PbList<FollowResponse> createRepeated() => $pb.PbList<FollowResponse>();
  @$core.pragma('dart2js:noInline')
  static FollowResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowResponse>(create);
  static FollowResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class FollowStreamRequest extends $pb.GeneratedMessage {
  factory FollowStreamRequest({
    $core.String? userId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    return result;
  }

  FollowStreamRequest._();

  factory FollowStreamRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory FollowStreamRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowStreamRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'follow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowStreamRequest clone() => FollowStreamRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowStreamRequest copyWith(void Function(FollowStreamRequest) updates) => super.copyWith((message) => updates(message as FollowStreamRequest)) as FollowStreamRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowStreamRequest create() => FollowStreamRequest._();
  @$core.override
  FollowStreamRequest createEmptyInstance() => create();
  static $pb.PbList<FollowStreamRequest> createRepeated() => $pb.PbList<FollowStreamRequest>();
  @$core.pragma('dart2js:noInline')
  static FollowStreamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowStreamRequest>(create);
  static FollowStreamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
}

class FollowStreamResponse extends $pb.GeneratedMessage {
  factory FollowStreamResponse({
    $core.String? userId,
    $core.int? followerCount,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (followerCount != null) result.followerCount = followerCount;
    return result;
  }

  FollowStreamResponse._();

  factory FollowStreamResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory FollowStreamResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowStreamResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'follow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'followerCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowStreamResponse clone() => FollowStreamResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FollowStreamResponse copyWith(void Function(FollowStreamResponse) updates) => super.copyWith((message) => updates(message as FollowStreamResponse)) as FollowStreamResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowStreamResponse create() => FollowStreamResponse._();
  @$core.override
  FollowStreamResponse createEmptyInstance() => create();
  static $pb.PbList<FollowStreamResponse> createRepeated() => $pb.PbList<FollowStreamResponse>();
  @$core.pragma('dart2js:noInline')
  static FollowStreamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowStreamResponse>(create);
  static FollowStreamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get followerCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set followerCount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFollowerCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollowerCount() => $_clearField(2);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
