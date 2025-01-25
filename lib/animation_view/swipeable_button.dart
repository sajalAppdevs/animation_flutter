import 'package:animation_flutter/animation_view/list_view_animation.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_button_flutter/swipebutton.dart';

class SwipeableButtonAnimation extends StatefulWidget {
  const SwipeableButtonAnimation({super.key});

  @override
  State<SwipeableButtonAnimation> createState() =>
      _SwipeableButtonAnimationState();
}

class _SwipeableButtonAnimationState extends State<SwipeableButtonAnimation> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Center(
                child: SwipeButton(
              text: "Submit",
              onSwipeCallback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListViewAnimation()),
                );
              },
              height: 80,
            ))));
  }
}
