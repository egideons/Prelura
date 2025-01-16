import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prelura_app/views/pages/settings/verification/text_option.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

@RoutePage()
class VerifyYourIdentity extends StatelessWidget {
  const VerifyYourIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "Verifying your identity",
      ),
      // appBar: const VWidgetsAppBar(
      //   appbarTitle: "Verifying your identity",
      //   appBarHeight: 50,
      //   leadingIcon: VWidgetsBackButton(),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpacing(40),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      addVerticalSpacing(50),
                      SvgPicture.asset(
                        "assets/icons/user3.svg",
                        width: 55,
                        height: 55,
                        color: Theme.of(context).primaryColor,
                      ),
                      addVerticalSpacing(15),
                      Text(
                        "Take a picture of a valid photo ID",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Theme.of(context).primaryColor),
                      ),
                      addVerticalSpacing(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Like your passport, national ID, full or provisional driving licence, checking that:",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                addVerticalSpacing(50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BulletItem(
                      text: "It hasn't expired",
                    ),
                    addVerticalSpacing(15),
                    const BulletItem(
                      text: "It’s clear and easy to read",
                    ),
                    addVerticalSpacing(15),
                    const BulletItem(
                      text: "the whole ID is in the picture",
                    ),
                  ],
                ),
                addVerticalSpacing(50),
                AppButton(
                  text: "I'm ready",
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext context) => Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                // color:
                                //     Theme.of(context).scaffoldBackgroundColor,
                                color: Theme.of(context)
                                    .bottomSheetTheme
                                    .backgroundColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              width: double.infinity,
                              margin: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 4),
                              height: 206,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Which kind of ID would you like to use?",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                      maxLines: 2,
                                    ),
                                    TextOption(
                                      title: "Passport",
                                      onTap: () {
                                        // navigateToRoute(context,
                                        //     VWidgetsCountryRegions(
                                        //       onTap: () {
                                        //         navigateToRoute(context,
                                        //             const UploadIdentityDocument());
                                        //       },
                                        //     ));
                                      },
                                    ),
                                    TextOption(
                                      title: "Driving licence",
                                      onTap: () {
                                        // navigateToRoute(context,
                                        //     VWidgetsCountryRegions(
                                        //   onTap: () {
                                        //     navigateToRoute(context,
                                        //         const UploadIdentityDocument());
                                        //   },
                                        // ));
                                      },
                                    ),
                                    TextOption(
                                      title: "National identity card",
                                      onTap: () {
                                        // navigateToRoute(context,
                                        //     VWidgetsCountryRegions(
                                        //       onTap: () {
                                        //         navigateToRoute(context,
                                        //             const UploadIdentityDocument());
                                        //       },
                                        //     ));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            addVerticalSpacing(8),
                            MaterialButton(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              onPressed: () {
                                // popSheet(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  // color:
                                  //     Theme.of(context).scaffoldBackgroundColor,
                                  color: Theme.of(context)
                                      .bottomSheetTheme
                                      .backgroundColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                ),
                                width: double.infinity,
                                margin: const EdgeInsets.only(
                                    left: 12, right: 12, bottom: 4),
                                height: 50,
                                child: Center(
                                  child: Text("Cancel",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            // color: VmodelColors.blueTextColor,
                                          )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  isDisabled: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
