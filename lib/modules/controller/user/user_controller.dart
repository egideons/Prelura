import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';

final userProvider = FutureProvider((ref) async {
  final repo = ref.watch(userRepo);

  final result = repo.getMe();

  return result;
});
final otherUserProfile = FutureProvider.family<UserModel, String>((ref, username) async {
  final repo = ref.watch(userRepo);

  final result = repo.getUser(username);

  return result;
});

class _UserController extends AsyncNotifier<void> {
  late final _repo = ref.read(userRepo);

  @override
  Future<void> build() async {}

  Future<void> updateProfile({
    String? bio,
    String? country,
    String? displayName,
    DateTime? dob,
    String? firstName,
    String? gender,
    String? lastName,
    String? otp,
    Input$PhoneInputType? phoneNumber,
    String? postCode,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? username,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        await _repo.updateProfile(
          Variables$Mutation$UpdateProfile(
            bio: bio,
            country: country,
            displayName: displayName,
            dob: dob,
            firstName: firstName,
            gender: gender,
            lastName: lastName,
            otp: otp,
            phoneNumber: phoneNumber,
            postCode: postCode,
            profilePictureUrl: profilePictureUrl,
            thumbnailUrl: thumbnailUrl,
            username: username,
          ),
        );
      },
    );
  }
}
