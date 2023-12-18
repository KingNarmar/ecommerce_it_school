import 'package:flutter/material.dart';

class CustomFavoriteIcon extends StatelessWidget {
  const CustomFavoriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.044334975,
      width: MediaQuery.sizeOf(context).width * 0.096,
      decoration: const ShapeDecoration(
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
          color: Colors.white),
      child: const Icon(
        Icons.favorite_border_outlined,
        color: Colors.grey,
      ),
    );
  }
}
