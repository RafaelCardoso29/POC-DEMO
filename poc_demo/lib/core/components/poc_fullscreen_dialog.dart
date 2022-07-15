import 'package:flutter/material.dart';

class PocFullscreenDialog extends StatelessWidget {
  final Icon image;
  final String title;
  final String message;
  final String buttonText;
  final VoidCallback? onPressed;

  const PocFullscreenDialog({
    required this.image,
    required this.title,
    required this.message,
    required this.buttonText,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            image,
            const SizedBox(height: 31),
            Text(
              title,
              style: const TextStyle(color: Colors.red, fontSize: 16),
            ),
            Text(
              message,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
            const Spacer(),
            IconButton(onPressed: onPressed, icon: const Icon(Icons.alarm)),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
