import 'package:custom_scroll/tiktok_clone_ui/views/widget/icon_with_text.dart';
import 'package:custom_scroll/tiktok_clone_ui/views/widget/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/animated_music_box.dart';
import '../components/video_item.dart';

import '../constants.dart';
import '../data/video_data.dart';

class HomeTiktokScreen extends StatefulWidget {
  const HomeTiktokScreen({super.key});

  @override
  State<HomeTiktokScreen> createState() => _HomeTiktokScreenState();
}

class _HomeTiktokScreenState extends State<HomeTiktokScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videoData.length,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              VideoItem(url: videoData[index].url),
              SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Following",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      const SizedBox(width: 20.0),
                      const Text(
                        'For You',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0,
                  top: MediaQuery.sizeOf(context).height * 0.2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ProfileAvatar(),
                    const SizedBox(height: 30.0),
                    IconWithText(
                      icon: Icon(
                        Icons.favorite,
                        color: videoData[index].isLiked
                            ? Colors.red
                            : feedIconColor,
                        size: 45.0,
                      ),
                      text: videoData[index].likes,
                      onTap: () => setState(() {
                        videoData[index].isLiked = !videoData[index].isLiked;
                      }),
                    ),
                    const SizedBox(height: 20.0),
                    IconWithText(
                      icon: const Icon(
                        CupertinoIcons.chat_bubble_fill,
                        color: feedIconColor,
                        size: 45.0,
                      ),
                      text: videoData[index].comments,
                    ),
                    const SizedBox(height: 20.0),
                    IconWithText(
                      icon: const Icon(Icons.bookmark,
                          size: 45.0, color: feedIconColor),
                      text: videoData[index].favoriteLength,
                    ),
                    const SizedBox(height: 20.0),
                    IconWithText(
                      icon: const Icon(Icons.share,
                          color: feedIconColor, size: 45.0),
                      text: videoData[index].shares,
                    ),
                    const SizedBox(height: 25.0),
                    const AnimatedMusicBox(),
                  ],
                ),
              ),
              Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.1,
                left: 15.0,
                child: Text(
                  videoData[index].description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
