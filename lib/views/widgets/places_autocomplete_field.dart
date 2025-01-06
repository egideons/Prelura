import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/confirmation_dialog.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/res/helper_function.dart';

import '../../res/gmap_places_controller.dart';
import '../../res/utils.dart';

class PlacesAutocompletionField extends ConsumerStatefulWidget {
  const PlacesAutocompletionField({
    super.key,
    this.initialValue,
    this.isLocationUpdate = false,
    this.postOnChanged,
    this.onItemSelected,
    this.isFollowerTop = true,
    this.label,
    this.hintText = "Search your location",
    this.controller,
    this.fullLocation = true,
  });

  final String? initialValue;
  final bool isLocationUpdate;
  final void Function(String)? postOnChanged;
  final ValueChanged? onItemSelected;
  final String? label;
  final String hintText;
  final bool isFollowerTop;
  final bool fullLocation;
  final TextEditingController? controller;

  @override
  ConsumerState<PlacesAutocompletionField> createState() => _AutoCompleteLocationFieldFinalState();
}

class _AutoCompleteLocationFieldFinalState extends ConsumerState<PlacesAutocompletionField> {
  TextEditingController locController = TextEditingController();

  final Debounce _debounce = Debounce(delay: Duration(milliseconds: 300));

  @override
  void initState() {
    getLongLat();
    if (widget.controller != null) {
      locController = widget.controller!;
    } else {
      locController.text = widget.initialValue ?? '';
    }
    super.initState();
  }

  double long = 0.0;
  double lat = 0.0;
  getLongLat() async {
    Position getPosition = await determinePosition().catchError((error, stackTrace) async {
      if (error is String && error.contains('denied')) {
        _showEnableLocationPopup(
          context,
          title: "Permission Access",
          description: "VModel requires permission for location access to function while on this page.",
          positiveCallback: Geolocator.openAppSettings,
        );
      } else if (error is String && error.contains('disabled')) {
        _showEnableLocationPopup(
          context,
          title: "Location Disabled",
          description: "VModel requires location access for the proper functioning of the app. Please enable device location.",
          positiveCallback: Geolocator.openLocationSettings,
        );
      } else {
        return HelperFunction.showToast(message: error.toString());
      }
    });

    if (mounted) {
      setState(() {
        lat = getPosition.latitude;
        long = getPosition.longitude;
      });
      print('lat: $lat, long: $long');
    }
  }

  @override
  Widget build(BuildContext context) {
    final places = ref.watch(suggestedPlacesProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PortalTarget(
          // visible: items.isNotEmpty,
          anchor: Aligned(
            follower: Alignment.topCenter,
            target: Alignment.bottomCenter,
            // follower:
            //     widget.isFollowerTop ? Alignment.bottomLeft : Alignment.topLeft,
            // target:
            //     widget.isFollowerTop ? Alignment.topLeft : Alignment.bottomLeft,
            widthFactor: 1,
          ),

          portalFollower: Card(
            color: Theme.of(context).cardColor,
            // color: Colors.amber,
            elevation: 5,
            child: places.maybeWhen(data: (items) {
              if (items.isEmpty) {
                return SizedBox.shrink();
              }
              return ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 200,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) => LocationListTile(
                    press: () async {
                      getLongLat();
                      if (widget.onItemSelected != null) {
                        // widget.onItemSelected!(items[index].description);

                        final data = await ref.read(suggestedPlacesProvider.notifier).getPlacesDetail(items[index].placeId!);

                        final addressComponent = data['address_components'] as List;
                        String streetAddress = '';
                        String city = '';
                        String county = '';
                        String country = '';
                        String postalCode = '';

                        for (var component in addressComponent) {
                          final types = component['types'] as List;
                          for (var type in types) {
                            if (type == 'street_number') {
                              streetAddress += component['long_name'] + ' ';
                              break; // Stop iterating types after finding street_number
                            } else if (type == 'route') {
                              streetAddress += component['long_name'] + ' ';
                            }

                            if (type == 'locality') {
                              city = component['long_name'];
                            }
                            if (type == 'administrative_area_level_1') {
                              county = component['long_name'];
                            }
                            if (type == 'country') {
                              country = component['long_name'];
                            }
                            if (type == 'postal_code') {
                              postalCode = component['long_name'];
                            }
                          }
                        }

                        widget.onItemSelected!(
                          widget.fullLocation
                              ? {
                                  'placeId': items[index].placeId,
                                  'description': items[index].description,
                                }
                              : {
                                  'streetAddress': streetAddress,
                                  'city': city,
                                  'county': county,
                                  'country': country,
                                  'postalCode': postalCode,
                                  'longitude': data['geometry']['location']['lng'],
                                  'latitude': data['geometry']['location']['lat'],
                                },
                        );
                        ref.read(placeSearchQueryProvider.notifier).state = '';
                        setState(() {
                          if (widget.fullLocation) {
                            locController.text = items[index].description ?? '';
                          } else {
                            locController.text = streetAddress;
                          }

                          // items = [];
                        });
                      }
                    },
                    // location: items[index].description!,
                    location: items[index].description ?? 'null',
                  ),
                ),
              );
            }, orElse: () {
              return SizedBox.shrink();
            }),
          ),
          child: PreluraAuthTextField(
            // label: "Additional Address Details",
            // hintText: "Search your location",
            label: widget.label,
            hintText: widget.hintText,
            controller: locController,
            // validator: (value) {
            //   return null;
            // },
            onChanged: (value) {
              print(value);
              if (widget.postOnChanged != null) {
                widget.postOnChanged!(value);
              }

              _debounce(() {
                ref.read(placeSearchQueryProvider.notifier).state = value;
              });
              // placeAutoComplete(value!);
            },
          ),
          // Text('Hello'),
        ),
        addVerticalSpacing(10),
      ],
    );
  }
}

void _showEnableLocationPopup(BuildContext context, {required String title, required String description, required Future<bool> Function() positiveCallback}) {
  PreluraConfirmationPopUp(
    popupTitle: title,
    popupDescription: description,
    onPressedYes: () async {
      //Calls to settings are not supported on the web
      if (kIsWeb) return;
      final res = await positiveCallback();
    },
    onPressedNo: () {
      Navigator.pop(context);
    },
  );
}

/// The Autocomplete response contains place predictions and status

class LocationListTile extends StatelessWidget {
  const LocationListTile({
    super.key,
    required this.location,
    required this.press,
  });

  final String location;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: press,
          horizontalTitleGap: 0,
          leading: SvgPicture.asset(
            "assets/icons/location_pin.svg",
            colorFilter: ColorFilter.mode(
              Theme.of(context).primaryColor,
              BlendMode.srcIn,
            ),
          ),
          title: Text(
            location,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}
