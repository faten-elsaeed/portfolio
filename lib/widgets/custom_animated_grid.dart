import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomAnimatedGrid extends StatelessWidget {
  const CustomAnimatedGrid({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.scrollController,
    this.padding,
    this.shrinkWrap,
    this.physics,
  });

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final ScrollController? scrollController;
  final EdgeInsets? padding;
  final bool? shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: MasonryGridView.builder(
        shrinkWrap: shrinkWrap ?? false,
        padding: padding,
        controller: scrollController,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 15.0,
        itemCount: itemCount + 1,
        physics:
            physics ??
            const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredGrid(
            position: index,
            duration: const Duration(milliseconds: 700),
            columnCount: 2,
            child: ScaleAnimation(
              duration: const Duration(milliseconds: 1100),
              curve: Curves.fastLinearToSlowEaseIn,
              child: FadeInAnimation(child: itemBuilder(context, index)),
            ),
          );
        },
      ),
    );
  }
}
