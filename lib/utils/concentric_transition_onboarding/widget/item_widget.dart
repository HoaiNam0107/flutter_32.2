import 'package:flutter/cupertino.dart';

import 'item_data.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({required this.data, super.key});

  final ItemData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),

              // image
              Flexible(flex: 20, child: Image(image: data.image)),
              const Spacer(flex: 1),

              // title
              Text(
                data.title,
                style: TextStyle(
                  color: data.titleColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                maxLines: 1,
              ),
              const Spacer(flex: 1),

              // subtitle
              Text(
                data.subtitle,
                style: TextStyle(color: data.subtitleColor, fontSize: 20),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Spacer(flex: 10),
            ],
          ),
        ),
      ],
    );
  }
}
