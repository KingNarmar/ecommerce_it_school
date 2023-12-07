import 'package:flutter/material.dart';

class CustomContainerForSocialIcons extends StatelessWidget {
  const CustomContainerForSocialIcons({
    super.key,
    this.iconPath,
  });
  final String? iconPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.245333333,
        height: MediaQuery.sizeOf(context).height * 0.078817734,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 8,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Image.asset(
          iconPath!,
        ),
      ),
    );
  }
}
