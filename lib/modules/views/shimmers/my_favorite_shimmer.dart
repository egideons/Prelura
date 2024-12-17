import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/shimmers/custom_shimmer.dart';
import 'package:prelura_app/modules/views/shimmers/grid_shimmer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

Widget MyFavoriteShimmer() {
  return SingleChildScrollView(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        CustomShimmer(
          child: Container(
            height: 58,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GridShimmer()
      ],
    ),
  );
}
