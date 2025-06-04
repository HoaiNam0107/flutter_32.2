import 'package:custom_scroll/utils/tinder_card/widget/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class TinderSwipeCardScreen extends StatefulWidget {
  const TinderSwipeCardScreen({super.key});

  @override
  TinderSwipeCardScreenState createState() => TinderSwipeCardScreenState();
}

class TinderSwipeCardScreenState extends State<TinderSwipeCardScreen> {
  final CardSwiperController controller = CardSwiperController();

  // Sample profile data with images, names, ages, and bios
  final List<Map<String, dynamic>> profiles = [
    {
      'name': 'Alex',
      'age': 28,
      'bio': 'Loves hiking and coffee.',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&s',
    },
    {
      'name': 'Sam',
      'age': 25,
      'bio': 'Passionate about music and travel.',
      'image': 'https://images.unsplash.com/photo-1517841905240-472988babdf9',
    },
    {
      'name': 'Taylor',
      'age': 30,
      'bio': 'Foodie and adventure seeker.',
      'image': 'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6',
    },
    {
      'name': 'Casey',
      'age': 29,
      'bio': 'Enjoys photography and yoga.',
      'image': 'https://images.unsplash.com/photo-1494790108377-be9c29b29330',
    },
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              width: 350,
              child: CardSwiper(
                controller: controller,
                cardsCount: profiles.length,
                cardBuilder: (context, index, x, y) => ProfileCard(
                  profile: profiles[index],
                  swipeProgress: x.toDouble(),
                ),
                onSwipe: (previousIndex, currentIndex, direction) {
                  final profile = profiles[previousIndex];
                  print('${profile['name']} swiped: $direction');
                  if (direction == CardSwiperDirection.left) {
                    print('Disliked ${profile['name']}');
                  } else if (direction == CardSwiperDirection.right) {
                    print('Liked ${profile['name']}');
                  } else if (direction == CardSwiperDirection.top) {
                    print('Super Liked ${profile['name']}');
                  } else if (direction == CardSwiperDirection.bottom) {
                    print('Passed ${profile['name']}');
                  }
                  return true;
                },
                allowedSwipeDirection: AllowedSwipeDirection.symmetric(
                  horizontal: true,
                  vertical: true,
                ),
                numberOfCardsDisplayed: 3,
                scale: 0.9,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => controller.swipe(CardSwiperDirection.left),
                  backgroundColor: Colors.white,
                  elevation: 4,
                  child: const Icon(Icons.close, color: Colors.red, size: 30),
                ),
                const SizedBox(width: 30),
                FloatingActionButton(
                  onPressed: () => controller.swipe(CardSwiperDirection.top),
                  backgroundColor: Colors.white,
                  elevation: 4,
                  child: const Icon(Icons.star, color: Colors.blue, size: 30),
                ),
                const SizedBox(width: 30),
                FloatingActionButton(
                  onPressed: () => controller.swipe(CardSwiperDirection.right),
                  backgroundColor: Colors.white,
                  elevation: 4,
                  child:
                      const Icon(Icons.favorite, color: Colors.green, size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

