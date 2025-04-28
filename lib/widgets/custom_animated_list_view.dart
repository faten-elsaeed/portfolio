import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomAnimatedListView extends StatelessWidget {
  const CustomAnimatedListView({
    super.key,
    this.children,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
    this.itemBuilder,
    this.itemCount,
    this.scrollController,
  });

  final List<Widget>? children;
  final IndexedWidgetBuilder? itemBuilder;
  final int? itemCount;
  final EdgeInsets? padding;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        controller: scrollController,
        padding: padding,
        itemCount: itemCount ?? children?.length,
        shrinkWrap: shrinkWrap,
        physics: physics ??
            const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
        itemBuilder: (context, index) => AnimationConfiguration.staggeredList(
          position: index,
          delay: const Duration(milliseconds: 100),
          child: ScaleAnimation(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOutBack,
            child: FadeInAnimation(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeIn,
              child: itemBuilder != null
                  ? itemBuilder!(context, index)
                  : children![index],
            ),
          ),
        ),
      ),
    );
  }
}
