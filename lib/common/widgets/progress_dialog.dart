import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {
  const ProgressDialog({
    Key? key,
    required this.title,
    required this.isProgressed,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final bool isProgressed;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Please wait"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title),
          const SizedBox(height: 15),
          isProgressed ? const CupertinoActivityIndicator() : const SizedBox(),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            child: isProgressed
                ? const SizedBox()
                : ElevatedButton(
                    onPressed: onPressed,
                    child: const Text("Success"),
                  ),
          )
        ],
      ),
    );
  }
}
