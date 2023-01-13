import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_palette.dart';
import 'package:travel_app/core/constants/dimension_constants.dart';

class DashLineWidget extends StatelessWidget {
  const DashLineWidget({
    super.key,
    this.height = 1,
    this.color = ColorPalette.dividerColor,
  });

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double boxWidth = constraints.constrainWidth();
        const double dashWidth = 6.0;
        final double dashHeight = height;
        final int dashCount = (boxWidth / (2 * dashWidth)).floor();

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate(
              dashCount,
              (index) {
                return SizedBox(
                  width: dashWidth,
                  height: dashHeight,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: color),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
