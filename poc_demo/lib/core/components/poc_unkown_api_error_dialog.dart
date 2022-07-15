import 'package:flutter/material.dart';
import 'package:poc_demo/core/components/poc_fullscreen_dialog.dart';

class PocUnknownApiErrorDialog extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onPressed;

  const PocUnknownApiErrorDialog({
    super.key,
    this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return PocFullscreenDialog(
      image: const Icon(Icons.warning),
      title: "Title msg",
      message: "something went Wrong",
      buttonText: buttonText ?? "",
      onPressed: onPressed ?? () => Navigator.of(context).pop(),
    );
  }
}
