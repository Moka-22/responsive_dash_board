import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imagecolor,
    this.imagebackgroundcolor,
  });
  final String image;
  final Color? imagecolor, imagebackgroundcolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: imagebackgroundcolor ?? Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              imagecolor ?? Color(0xFF4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imagecolor == null ? Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
