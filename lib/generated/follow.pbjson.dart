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

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use followRequestDescriptor instead')
const FollowRequest$json = {
  '1': 'FollowRequest',
  '2': [
    {'1': 'follower_id', '3': 1, '4': 1, '5': 9, '10': 'followerId'},
    {'1': 'followed_id', '3': 2, '4': 1, '5': 9, '10': 'followedId'},
  ],
};

/// Descriptor for `FollowRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followRequestDescriptor = $convert.base64Decode(
    'Cg1Gb2xsb3dSZXF1ZXN0Eh8KC2ZvbGxvd2VyX2lkGAEgASgJUgpmb2xsb3dlcklkEh8KC2ZvbG'
    'xvd2VkX2lkGAIgASgJUgpmb2xsb3dlZElk');

@$core.Deprecated('Use followResponseDescriptor instead')
const FollowResponse$json = {
  '1': 'FollowResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `FollowResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followResponseDescriptor = $convert.base64Decode(
    'Cg5Gb2xsb3dSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAi'
    'ABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use followStreamRequestDescriptor instead')
const FollowStreamRequest$json = {
  '1': 'FollowStreamRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `FollowStreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followStreamRequestDescriptor = $convert.base64Decode(
    'ChNGb2xsb3dTdHJlYW1SZXF1ZXN0EhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZA==');

@$core.Deprecated('Use followStreamResponseDescriptor instead')
const FollowStreamResponse$json = {
  '1': 'FollowStreamResponse',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'follower_count', '3': 2, '4': 1, '5': 5, '10': 'followerCount'},
  ],
};

/// Descriptor for `FollowStreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followStreamResponseDescriptor = $convert.base64Decode(
    'ChRGb2xsb3dTdHJlYW1SZXNwb25zZRIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSJQoOZm9sbG'
    '93ZXJfY291bnQYAiABKAVSDWZvbGxvd2VyQ291bnQ=');

