import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/styles.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onTap;
  final String title;
  final int index ;

  const CustomButton({super.key, required this.onTap, required this.title, required this.index});

  @override
  State<CustomButton> createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        widget.onTap();
      },
      child: ScaleTransition(
          scale: _tween.animate(
            CurvedAnimation(
              parent: _controller,
              curve: Curves.easeOut,
              reverseCurve: Curves.easeIn,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.buttonColor,
            ),
            child: (widget.index == 2)?Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Let’s Chat', style: Styles.buttonText),
                const SizedBox(width: 12,),
                const Icon(FontAwesomeIcons.arrowRightLong , size: 16, color: Colors.white,),
              ],
            ):Text(widget.title, style: Styles.buttonText),
          )),
    );
  }
}