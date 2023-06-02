import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CharacterShimmerLoading extends StatelessWidget {
  const CharacterShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.r,
                  mainAxisSpacing: 10.r,
                  crossAxisCount: 2,
                  childAspectRatio: 0.62.r
      ),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
        baseColor: Theme.of(context).highlightColor.withOpacity(0.2),
        highlightColor: Theme.of(context).highlightColor.withOpacity(0.5),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).highlightColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
        ));
      },
    );
  }
}
