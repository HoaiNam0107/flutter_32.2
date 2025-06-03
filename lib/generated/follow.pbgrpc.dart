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

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'follow.pb.dart' as $0;

export 'follow.pb.dart';

@$pb.GrpcServiceName('follow.FollowService')
class FollowServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$followUser = $grpc.ClientMethod<$0.FollowRequest, $0.FollowResponse>(
      '/follow.FollowService/FollowUser',
      ($0.FollowRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FollowResponse.fromBuffer(value));
  static final _$followStream = $grpc.ClientMethod<$0.FollowStreamRequest, $0.FollowStreamResponse>(
      '/follow.FollowService/FollowStream',
      ($0.FollowStreamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FollowStreamResponse.fromBuffer(value));

  FollowServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.FollowResponse> followUser($0.FollowRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$followUser, request, options: options);
  }

  $grpc.ResponseStream<$0.FollowStreamResponse> followStream($async.Stream<$0.FollowStreamRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$followStream, request, options: options);
  }
}

@$pb.GrpcServiceName('follow.FollowService')
abstract class FollowServiceBase extends $grpc.Service {
  $core.String get $name => 'follow.FollowService';

  FollowServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FollowRequest, $0.FollowResponse>(
        'FollowUser',
        followUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FollowRequest.fromBuffer(value),
        ($0.FollowResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FollowStreamRequest, $0.FollowStreamResponse>(
        'FollowStream',
        followStream,
        true,
        true,
        ($core.List<$core.int> value) => $0.FollowStreamRequest.fromBuffer(value),
        ($0.FollowStreamResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.FollowResponse> followUser_Pre($grpc.ServiceCall $call, $async.Future<$0.FollowRequest> $request) async {
    return followUser($call, await $request);
  }

  $async.Future<$0.FollowResponse> followUser($grpc.ServiceCall call, $0.FollowRequest request);
  $async.Stream<$0.FollowStreamResponse> followStream($grpc.ServiceCall call, $async.Stream<$0.FollowStreamRequest> request);
}
