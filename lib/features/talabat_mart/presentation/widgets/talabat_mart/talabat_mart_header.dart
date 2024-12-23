import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/search_text_field.dart';

class TalabatMartHeader extends StatelessWidget {
  const TalabatMartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: SearchTextField(),
    );
  }
}
