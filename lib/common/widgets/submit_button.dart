import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    this.title = 'Login',
    this.onPressed,
    this.loading = false,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final bool enabled = onPressed != null;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          if (enabled)
            BoxShadow(
              color: const Color(0xFF62CDCB).withOpacity(.5),
              offset: const Offset(0, 8),
              blurRadius: 14,
            )
        ],
        gradient: LinearGradient(
          colors: [
            const Color(0xFF62CDCB).withOpacity(enabled ? 1.0 : .5),
            const Color(0xFF4599DB).withOpacity(enabled ? 1.0 : .5),
          ],
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (loading) const CupertinoActivityIndicator(color: Colors.white),
            if (loading) const SizedBox(width: 8.0),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.white.withOpacity(enabled ? 1.0 : .5)),
            ),
          ],
        ),
      ),
    );
  }
}
