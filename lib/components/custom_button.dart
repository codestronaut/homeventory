import 'package:flutter/material.dart';

import '../common/gen/colors.gen.dart';
import '../common/styles.dart';

enum CustomButtonSize { small, large }
enum CustomButtonStyle { filled, outlined }

class CustomButton extends StatelessWidget {
  final String label;
  final GestureTapCallback onTap;
  final CustomButtonSize? size;
  final CustomButtonStyle? style;
  final bool? enable;
  final bool? fullRounded;
  final Color? customColor;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.size = CustomButtonSize.small,
    this.style = CustomButtonStyle.filled,
    this.enable = true,
    this.fullRounded = false,
    this.customColor = ColorName.midnight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (size) {
      case CustomButtonSize.small:
        if (style == CustomButtonStyle.filled) {
          return TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              primary: Colors.white,
              backgroundColor: enable! ? customColor : Colors.grey[350],
              shape: fullRounded!
                  ? const StadiumBorder()
                  : RoundedRectangleBorder(
                      borderRadius: Styles.secondaryBorderRadius,
                    ),
              elevation: 0.0,
            ),
            onPressed: enable! ? onTap : null,
            child: Text(
              label.toUpperCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          );
        }
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            primary: customColor,
            shape: fullRounded!
                ? const StadiumBorder()
                : RoundedRectangleBorder(
                    borderRadius: Styles.secondaryBorderRadius,
                  ),
            side: BorderSide(color: customColor!, width: 1),
          ),
          child: Text(
            label.toUpperCase(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.button!.copyWith(
                  color: customColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
          onPressed: onTap,
        );

      case CustomButtonSize.large:
        if (style == CustomButtonStyle.filled) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                primary: Colors.white,
                backgroundColor: enable! ? customColor : Colors.grey[350],
                shape: fullRounded!
                    ? const StadiumBorder()
                    : RoundedRectangleBorder(
                        borderRadius: Styles.secondaryBorderRadius,
                      ),
                elevation: 0.0,
              ),
              onPressed: enable! ? onTap : null,
              child: Text(
                label.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.button!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          );
        }
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              primary: customColor,
              shape: fullRounded!
                  ? const StadiumBorder()
                  : RoundedRectangleBorder(
                      borderRadius: Styles.secondaryBorderRadius,
                    ),
              side: BorderSide(color: customColor!, width: 1),
            ),
            child: Text(
              label.toUpperCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: customColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            onPressed: onTap,
          ),
        );
      default:
        return const SizedBox();
    }
  }
}
