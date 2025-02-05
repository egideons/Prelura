import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/colors.dart';
import 'package:prelura_app/res/utils.dart';

class UserScrollableList extends ConsumerWidget {
  const UserScrollableList({super.key, required this.user});
  final UserModel? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingCount = user?.listing ?? 0;
    final noOfFollowing = user?.noOfFollowing ?? 0;
    return Container(
      margin: EdgeInsets.only(top: 0),
      padding: EdgeInsets.only(top: 8, right: 8, bottom: 8),
      child: Column(
        children: [
          buildDivider(context),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildItem(context,
                      title: listingCount == 1 ? "Listing" : "Listings",
                      numbers: user?.listing?.toString(),
                      onTap: () {}),
                  16.horizontalSpacing,
                  _buildItem(context,
                      title: 'Following',
                      numbers: user?.noOfFollowing.toString(), onTap: () {
                    context.router
                        .push(FollowingRoute(username: user?.username ?? ""));
                  }),
                  16.horizontalSpacing,
                  _buildItem(context,
                      title: (user?.noOfFollowers != null &&
                              user != null &&
                              (user!.noOfFollowers!.toInt() > 1 ||
                                  user?.noOfFollowers?.toInt() == 0))
                          ? " Followers"
                          : " Follower",
                      numbers: user?.noOfFollowers.toString(), onTap: () {
                    context.router
                        .push(FollowersRoute(username: user?.username ?? ""));
                  }),
                  16.horizontalSpacing,
                  _buildItem(context, title: 'Reviews', numbers: "300",
                      onTap: () {
                    context.router.push(ReviewRoute());
                  }),
                  16.horizontalSpacing,
                  _buildItem(context,
                      title: "Ratings", numbers: "4.95", onTap: () {}),
                ],
              )),
          if (listingCount == 0 || user?.isVacationMode == true)
            buildDivider(context),
        ],
      ),
    );
  }
}

Widget _buildItem(BuildContext context,
    {required String title,
    required String? numbers,
    required Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      // color: Colors.red,
      width: 25.4.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: Text(
              numbers ?? "0",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
            ),
          ),
          5.verticalSpacing,
          Align(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: getDefaultSize(),
                  fontWeight: FontWeight.w500,
                  color: PreluraColors.greyColor),
            ),
          ),
        ],
      ),
    ),
  );
}
