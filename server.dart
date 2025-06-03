import 'dart:async';
import 'package:grpc/grpc.dart';
import 'lib/generated/follow.pbgrpc.dart';

class FollowService extends FollowServiceBase {
  final Map<String, int> _followerCounts = {};
  final Map<String, List<StreamController<FollowStreamResponse>>> _subscribers = {};

  @override
  Future<FollowResponse> followUser(
      ServiceCall call, FollowRequest request) async {
    _followerCounts[request.followedId] =
        (_followerCounts[request.followedId] ?? 0) + 1;

    final subscribers = _subscribers[request.followedId] ?? [];
    for (var controller in subscribers) {
      if (!controller.isClosed) {
        controller.add(FollowStreamResponse()
          ..userId = request.followedId
          ..followerCount = _followerCounts[request.followedId]!);
      }
    }

    return FollowResponse()
      ..success = true
      ..message = 'Followed successfully';
  }

  @override
  Stream<FollowStreamResponse> followStream(
      ServiceCall call, Stream<FollowStreamRequest> request) async* {
    final controller = StreamController<FollowStreamResponse>();

    await for (var req in request) {
      _subscribers[req.userId] = _subscribers[req.userId] ?? [];
      _subscribers[req.userId]!.add(controller);

      yield FollowStreamResponse()
        ..userId = req.userId
        ..followerCount = _followerCounts[req.userId] ?? 0;

      controller.onCancel = () {
        _subscribers[req.userId]?.remove(controller);
        controller.close();
      };
    }
  }
}

Future<void> main() async {
  final server = Server([FollowService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}