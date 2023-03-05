import 'package:final_template/core/constants/figma_colors.dart';
import 'package:final_template/core/constants/figma_styles.dart';
import 'package:flutter/material.dart';

class TextUnderline extends StatelessWidget {

  final String text;
  final VoidCallback onTap;
  final TextStyle? style;

  const TextUnderline({
    Key? key,
    required this.text,
    required this.onTap,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          text: text,
          style: style??FigmaStyles.bodytextbasefontNormalprimary900.copyWith(decoration: TextDecoration.underline)
        )
      ),
    );
  }
}
