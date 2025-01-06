// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i62;
import 'package:flutter/cupertino.dart' as _i63;
import 'package:flutter/foundation.dart' as _i67;
import 'package:flutter/material.dart' as _i64;
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart'
    as _i65;
import 'package:prelura_app/core/router/app_startup.dart' as _i3;
import 'package:prelura_app/model/product/categories/category_model.dart'
    as _i68;
import 'package:prelura_app/model/product/product_model.dart' as _i66;
import 'package:prelura_app/views/pages/about_prelura_menu.dart' as _i1;
import 'package:prelura_app/views/pages/auth_page.dart' as _i5;
import 'package:prelura_app/views/pages/authentication/forgot_password.dart'
    as _i18;
import 'package:prelura_app/views/pages/authentication/new_password.dart'
    as _i30;
import 'package:prelura_app/views/pages/authentication/sign_in.dart' as _i24;
import 'package:prelura_app/views/pages/authentication/sign_up.dart' as _i54;
import 'package:prelura_app/views/pages/balance_page.dart' as _i6;
import 'package:prelura_app/views/pages/chat/chat_view.dart' as _i9;
import 'package:prelura_app/views/pages/discounted_products_view.dart' as _i14;
import 'package:prelura_app/views/pages/filtered_products/product_by_filters.dart'
    as _i15;
import 'package:prelura_app/views/pages/filtered_products/product_by_hashtag_page.dart'
    as _i36;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/product_by_christmas.dart'
    as _i10;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/product_by_party.dart'
    as _i33;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/products_by_vintage.dart'
    as _i61;
import 'package:prelura_app/views/pages/filtered_products/product_filter_page.dart'
    as _i39;
import 'package:prelura_app/views/pages/filtered_products/products_by_brand.dart'
    as _i40;
import 'package:prelura_app/views/pages/followers/view/followers_view.dart'
    as _i16;
import 'package:prelura_app/views/pages/following/view/following_view.dart'
    as _i17;
import 'package:prelura_app/views/pages/holiday_mode.dart' as _i19;
import 'package:prelura_app/views/pages/home.dart' as _i21;
import 'package:prelura_app/views/pages/home_navigation.dart' as _i20;
import 'package:prelura_app/views/pages/inbox_screen.dart' as _i22;
import 'package:prelura_app/views/pages/legal_information.dart' as _i23;
import 'package:prelura_app/views/pages/menu_page.dart' as _i26;
import 'package:prelura_app/views/pages/my_favourite.dart' as _i28;
import 'package:prelura_app/views/pages/my_order/view/my_order_screen.dart'
    as _i29;
import 'package:prelura_app/views/pages/payment/payment_view.dart' as _i34;
import 'package:prelura_app/views/pages/product_detail/product_detail.dart'
    as _i37;
import 'package:prelura_app/views/pages/product_detail/send_an_offer.dart'
    as _i51;
import 'package:prelura_app/views/pages/profile_details/view/profile_details.dart'
    as _i41;
import 'package:prelura_app/views/pages/profile_details/view/review_tab.dart'
    as _i46;
import 'package:prelura_app/views/pages/profile_details_copy/view/profile_details.dart'
    as _i59;
import 'package:prelura_app/views/pages/profile_navigation_screen.dart' as _i42;
import 'package:prelura_app/views/pages/recently_viewed_product.dart' as _i44;
import 'package:prelura_app/views/pages/search_screen.dart' as _i47;
import 'package:prelura_app/views/pages/sell_item/brand_view.dart' as _i7;
import 'package:prelura_app/views/pages/sell_item/category_view.dart' as _i8;
import 'package:prelura_app/views/pages/sell_item/color_selector_view.dart'
    as _i11;
import 'package:prelura_app/views/pages/sell_item/condition_view.dart' as _i12;
import 'package:prelura_app/views/pages/sell_item/discount_page.dart' as _i13;
import 'package:prelura_app/views/pages/sell_item/material_view.dart' as _i25;
import 'package:prelura_app/views/pages/sell_item/parcel_view.dart' as _i32;
import 'package:prelura_app/views/pages/sell_item/price_view.dart' as _i35;
import 'package:prelura_app/views/pages/sell_item/product_list_view.dart'
    as _i38;
import 'package:prelura_app/views/pages/sell_item/product_sub_category.dart'
    as _i57;
import 'package:prelura_app/views/pages/sell_item/sell_item_view.dart' as _i49;
import 'package:prelura_app/views/pages/sell_item/size_view.dart' as _i55;
import 'package:prelura_app/views/pages/sell_item/style_page.dart' as _i56;
import 'package:prelura_app/views/pages/sell_item/sub_category_view.dart'
    as _i58;
import 'package:prelura_app/views/pages/sell_item_navigation.dart' as _i50;
import 'package:prelura_app/views/pages/settings/account_setting_view.dart'
    as _i2;
import 'package:prelura_app/views/pages/settings/appearance_menu.dart' as _i4;
import 'package:prelura_app/views/pages/settings/multi_buy_discount.dart'
    as _i27;
import 'package:prelura_app/views/pages/settings/notification_setting.dart'
    as _i31;
import 'package:prelura_app/views/pages/settings/profile_setting_view.dart'
    as _i43;
import 'package:prelura_app/views/pages/settings/reset_password.dart' as _i45;
import 'package:prelura_app/views/pages/settings/security_menu.dart' as _i48;
import 'package:prelura_app/views/pages/settings/shop_value.dart' as _i53;
import 'package:prelura_app/views/pages/settings/verify_email_page.dart'
    as _i60;
import 'package:prelura_app/views/pages/user_settings.dart' as _i52;

/// generated route for
/// [_i1.AboutPreluraMenuScreen]
class AboutPreluraMenuRoute extends _i62.PageRouteInfo<void> {
  const AboutPreluraMenuRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AboutPreluraMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutPreluraMenuRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutPreluraMenuScreen();
    },
  );
}

/// generated route for
/// [_i2.AccountSettingScreen]
class AccountSettingRoute extends _i62.PageRouteInfo<void> {
  const AccountSettingRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AccountSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountSettingRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i2.AccountSettingScreen();
    },
  );
}

/// generated route for
/// [_i3.AppStartupPage]
class AppStartupRoute extends _i62.PageRouteInfo<void> {
  const AppStartupRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AppStartupRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppStartupRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i3.AppStartupPage();
    },
  );
}

/// generated route for
/// [_i4.AppearanceMenuScreen]
class AppearanceMenuRoute extends _i62.PageRouteInfo<void> {
  const AppearanceMenuRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AppearanceMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceMenuRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i4.AppearanceMenuScreen();
    },
  );
}

/// generated route for
/// [_i5.AuthPage]
class AuthRoute extends _i62.PageRouteInfo<void> {
  const AuthRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i5.AuthPage();
    },
  );
}

/// generated route for
/// [_i6.BalancePage]
class BalanceRoute extends _i62.PageRouteInfo<void> {
  const BalanceRoute({List<_i62.PageRouteInfo>? children})
      : super(
          BalanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'BalanceRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i6.BalancePage();
    },
  );
}

/// generated route for
/// [_i7.BrandSelectionPage]
class BrandSelectionRoute extends _i62.PageRouteInfo<void> {
  const BrandSelectionRoute({List<_i62.PageRouteInfo>? children})
      : super(
          BrandSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrandSelectionRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i7.BrandSelectionPage();
    },
  );
}

/// generated route for
/// [_i8.CategoryScreen]
class CategoryRoute extends _i62.PageRouteInfo<void> {
  const CategoryRoute({List<_i62.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i8.CategoryScreen();
    },
  );
}

/// generated route for
/// [_i9.ChatScreen]
class ChatRoute extends _i62.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i63.Key? key,
    required String id,
    required String username,
    required String? avatarUrl,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            id: id,
            username: username,
            avatarUrl: avatarUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatRouteArgs>();
      return _i9.ChatScreen(
        key: args.key,
        id: args.id,
        username: args.username,
        avatarUrl: args.avatarUrl,
      );
    },
  );
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.id,
    required this.username,
    required this.avatarUrl,
  });

  final _i63.Key? key;

  final String id;

  final String username;

  final String? avatarUrl;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, id: $id, username: $username, avatarUrl: $avatarUrl}';
  }
}

/// generated route for
/// [_i10.ChristmasFilteredProductScreen]
class ChristmasFilteredProductRoute
    extends _i62.PageRouteInfo<ChristmasFilteredProductRouteArgs> {
  ChristmasFilteredProductRoute({
    _i64.Key? key,
    required _i65.Enum$StyleEnum style,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ChristmasFilteredProductRoute.name,
          args: ChristmasFilteredProductRouteArgs(
            key: key,
            style: style,
          ),
          initialChildren: children,
        );

  static const String name = 'ChristmasFilteredProductRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChristmasFilteredProductRouteArgs>();
      return _i10.ChristmasFilteredProductScreen(
        key: args.key,
        style: args.style,
      );
    },
  );
}

class ChristmasFilteredProductRouteArgs {
  const ChristmasFilteredProductRouteArgs({
    this.key,
    required this.style,
  });

  final _i64.Key? key;

  final _i65.Enum$StyleEnum style;

  @override
  String toString() {
    return 'ChristmasFilteredProductRouteArgs{key: $key, style: $style}';
  }
}

/// generated route for
/// [_i11.ColorSelectorScreen]
class ColorSelectorRoute extends _i62.PageRouteInfo<void> {
  const ColorSelectorRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ColorSelectorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorSelectorRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i11.ColorSelectorScreen();
    },
  );
}

/// generated route for
/// [_i12.ConditionScreen]
class ConditionRoute extends _i62.PageRouteInfo<void> {
  const ConditionRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ConditionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConditionRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i12.ConditionScreen();
    },
  );
}

/// generated route for
/// [_i13.DiscountPage]
class DiscountRoute extends _i62.PageRouteInfo<void> {
  const DiscountRoute({List<_i62.PageRouteInfo>? children})
      : super(
          DiscountRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscountRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i13.DiscountPage();
    },
  );
}

/// generated route for
/// [_i14.DiscountedProductsView]
class DiscountedProductsView
    extends _i62.PageRouteInfo<DiscountedProductsViewArgs> {
  DiscountedProductsView({
    _i64.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          DiscountedProductsView.name,
          args: DiscountedProductsViewArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscountedProductsView';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DiscountedProductsViewArgs>();
      return _i14.DiscountedProductsView(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class DiscountedProductsViewArgs {
  const DiscountedProductsViewArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i64.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'DiscountedProductsViewArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i15.FilterProductPage]
class FilterProductRoute extends _i62.PageRouteInfo<FilterProductRouteArgs> {
  FilterProductRoute({
    _i64.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          FilterProductRoute.name,
          args: FilterProductRouteArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterProductRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterProductRouteArgs>();
      return _i15.FilterProductPage(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class FilterProductRouteArgs {
  const FilterProductRouteArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i64.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'FilterProductRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i16.FollowersScreen]
class FollowersRoute extends _i62.PageRouteInfo<FollowersRouteArgs> {
  FollowersRoute({
    required String username,
    _i64.Key? key,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          FollowersRoute.name,
          args: FollowersRouteArgs(
            username: username,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FollowersRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FollowersRouteArgs>();
      return _i16.FollowersScreen(
        args.username,
        key: args.key,
      );
    },
  );
}

class FollowersRouteArgs {
  const FollowersRouteArgs({
    required this.username,
    this.key,
  });

  final String username;

  final _i64.Key? key;

  @override
  String toString() {
    return 'FollowersRouteArgs{username: $username, key: $key}';
  }
}

/// generated route for
/// [_i17.FollowingScreen]
class FollowingRoute extends _i62.PageRouteInfo<FollowingRouteArgs> {
  FollowingRoute({
    _i64.Key? key,
    required String username,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          FollowingRoute.name,
          args: FollowingRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'FollowingRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FollowingRouteArgs>();
      return _i17.FollowingScreen(
        key: args.key,
        username: args.username,
      );
    },
  );
}

class FollowingRouteArgs {
  const FollowingRouteArgs({
    this.key,
    required this.username,
  });

  final _i64.Key? key;

  final String username;

  @override
  String toString() {
    return 'FollowingRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i18.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i62.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i18.ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i19.HolidayModeScreen]
class HolidayModeRoute extends _i62.PageRouteInfo<void> {
  const HolidayModeRoute({List<_i62.PageRouteInfo>? children})
      : super(
          HolidayModeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HolidayModeRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i19.HolidayModeScreen();
    },
  );
}

/// generated route for
/// [_i20.HomeNavigationScreen]
class HomeNavigationRoute extends _i62.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i62.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i20.HomeNavigationScreen();
    },
  );
}

/// generated route for
/// [_i21.HomeScreen]
class HomeRoute extends _i62.PageRouteInfo<void> {
  const HomeRoute({List<_i62.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i21.HomeScreen();
    },
  );
}

/// generated route for
/// [_i22.InboxScreen]
class InboxRoute extends _i62.PageRouteInfo<void> {
  const InboxRoute({List<_i62.PageRouteInfo>? children})
      : super(
          InboxRoute.name,
          initialChildren: children,
        );

  static const String name = 'InboxRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i22.InboxScreen();
    },
  );
}

/// generated route for
/// [_i23.LegalInformationScreen]
class LegalInformationRoute extends _i62.PageRouteInfo<void> {
  const LegalInformationRoute({List<_i62.PageRouteInfo>? children})
      : super(
          LegalInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LegalInformationRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i23.LegalInformationScreen();
    },
  );
}

/// generated route for
/// [_i24.LoginScreen]
class LoginRoute extends _i62.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i64.Key? key,
    void Function(bool)? onLoginResult,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i24.LoginScreen(
        key: args.key,
        onLoginResult: args.onLoginResult,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.onLoginResult,
  });

  final _i64.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i25.MaterialSelectionScreen]
class MaterialSelectionRoute extends _i62.PageRouteInfo<void> {
  const MaterialSelectionRoute({List<_i62.PageRouteInfo>? children})
      : super(
          MaterialSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialSelectionRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i25.MaterialSelectionScreen();
    },
  );
}

/// generated route for
/// [_i26.MenuPage]
class MenuRoute extends _i62.PageRouteInfo<void> {
  const MenuRoute({List<_i62.PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i26.MenuPage();
    },
  );
}

/// generated route for
/// [_i27.MultiBuyDiscountScreen]
class MultiBuyDiscountRoute extends _i62.PageRouteInfo<void> {
  const MultiBuyDiscountRoute({List<_i62.PageRouteInfo>? children})
      : super(
          MultiBuyDiscountRoute.name,
          initialChildren: children,
        );

  static const String name = 'MultiBuyDiscountRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i27.MultiBuyDiscountScreen();
    },
  );
}

/// generated route for
/// [_i28.MyFavouriteScreen]
class MyFavouriteRoute extends _i62.PageRouteInfo<void> {
  const MyFavouriteRoute({List<_i62.PageRouteInfo>? children})
      : super(
          MyFavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyFavouriteRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i28.MyFavouriteScreen();
    },
  );
}

/// generated route for
/// [_i29.MyOrderScreen]
class MyOrderRoute extends _i62.PageRouteInfo<void> {
  const MyOrderRoute({List<_i62.PageRouteInfo>? children})
      : super(
          MyOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrderRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i29.MyOrderScreen();
    },
  );
}

/// generated route for
/// [_i30.NewPasswordScreen]
class NewPasswordRoute extends _i62.PageRouteInfo<NewPasswordRouteArgs> {
  NewPasswordRoute({
    _i64.Key? key,
    required String email,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          NewPasswordRoute.name,
          args: NewPasswordRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'NewPasswordRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewPasswordRouteArgs>();
      return _i30.NewPasswordScreen(
        key: args.key,
        email: args.email,
      );
    },
  );
}

class NewPasswordRouteArgs {
  const NewPasswordRouteArgs({
    this.key,
    required this.email,
  });

  final _i64.Key? key;

  final String email;

  @override
  String toString() {
    return 'NewPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i31.NotificationSettingScreen]
class NotificationSettingRoute
    extends _i62.PageRouteInfo<NotificationSettingRouteArgs> {
  NotificationSettingRoute({
    _i64.Key? key,
    required String title,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          NotificationSettingRoute.name,
          args: NotificationSettingRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationSettingRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationSettingRouteArgs>();
      return _i31.NotificationSettingScreen(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class NotificationSettingRouteArgs {
  const NotificationSettingRouteArgs({
    this.key,
    required this.title,
  });

  final _i64.Key? key;

  final String title;

  @override
  String toString() {
    return 'NotificationSettingRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i32.ParcelScreen]
class ParcelRoute extends _i62.PageRouteInfo<void> {
  const ParcelRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ParcelRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParcelRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i32.ParcelScreen();
    },
  );
}

/// generated route for
/// [_i33.PartyFilteredProductScreen]
class PartyFilteredProductRoute extends _i62.PageRouteInfo<void> {
  const PartyFilteredProductRoute({List<_i62.PageRouteInfo>? children})
      : super(
          PartyFilteredProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartyFilteredProductRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i33.PartyFilteredProductScreen();
    },
  );
}

/// generated route for
/// [_i34.PaymentScreen]
class PaymentRoute extends _i62.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i64.Key? key,
    required _i66.ProductModel product,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i34.PaymentScreen(
        key: args.key,
        product: args.product,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.product,
  });

  final _i64.Key? key;

  final _i66.ProductModel product;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i35.PriceScreen]
class PriceRoute extends _i62.PageRouteInfo<void> {
  const PriceRoute({List<_i62.PageRouteInfo>? children})
      : super(
          PriceRoute.name,
          initialChildren: children,
        );

  static const String name = 'PriceRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i35.PriceScreen();
    },
  );
}

/// generated route for
/// [_i36.ProductByHashtagPage]
class ProductByHashtagRoute
    extends _i62.PageRouteInfo<ProductByHashtagRouteArgs> {
  ProductByHashtagRoute({
    _i67.Key? key,
    required String hashtag,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ProductByHashtagRoute.name,
          args: ProductByHashtagRouteArgs(
            key: key,
            hashtag: hashtag,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductByHashtagRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductByHashtagRouteArgs>();
      return _i36.ProductByHashtagPage(
        key: args.key,
        hashtag: args.hashtag,
      );
    },
  );
}

class ProductByHashtagRouteArgs {
  const ProductByHashtagRouteArgs({
    this.key,
    required this.hashtag,
  });

  final _i67.Key? key;

  final String hashtag;

  @override
  String toString() {
    return 'ProductByHashtagRouteArgs{key: $key, hashtag: $hashtag}';
  }
}

/// generated route for
/// [_i37.ProductDetailScreen]
class ProductDetailRoute extends _i62.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i64.Key? key,
    required int productId,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return _i37.ProductDetailScreen(
        key: args.key,
        productId: args.productId,
      );
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.productId,
  });

  final _i64.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i38.ProductListScreen]
class ProductListRoute extends _i62.PageRouteInfo<void> {
  const ProductListRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i38.ProductListScreen();
    },
  );
}

/// generated route for
/// [_i39.ProductPriceFilterPage]
class ProductPriceFilterRoute
    extends _i62.PageRouteInfo<ProductPriceFilterRouteArgs> {
  ProductPriceFilterRoute({
    _i64.Key? key,
    required String title,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ProductPriceFilterRoute.name,
          args: ProductPriceFilterRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductPriceFilterRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductPriceFilterRouteArgs>();
      return _i39.ProductPriceFilterPage(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class ProductPriceFilterRouteArgs {
  const ProductPriceFilterRouteArgs({
    this.key,
    required this.title,
  });

  final _i64.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPriceFilterRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i40.ProductsByBrandPage]
class ProductsByBrandRoute
    extends _i62.PageRouteInfo<ProductsByBrandRouteArgs> {
  ProductsByBrandRoute({
    _i64.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ProductsByBrandRoute.name,
          args: ProductsByBrandRouteArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsByBrandRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductsByBrandRouteArgs>();
      return _i40.ProductsByBrandPage(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class ProductsByBrandRouteArgs {
  const ProductsByBrandRouteArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i64.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'ProductsByBrandRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i41.ProfileDetailsScreen]
class ProfileDetailsRoute extends _i62.PageRouteInfo<ProfileDetailsRouteArgs> {
  ProfileDetailsRoute({
    _i63.Key? key,
    required String username,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ProfileDetailsRoute.name,
          args: ProfileDetailsRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileDetailsRouteArgs>();
      return _i41.ProfileDetailsScreen(
        key: args.key,
        username: args.username,
      );
    },
  );
}

class ProfileDetailsRouteArgs {
  const ProfileDetailsRouteArgs({
    this.key,
    required this.username,
  });

  final _i63.Key? key;

  final String username;

  @override
  String toString() {
    return 'ProfileDetailsRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i42.ProfileNavigationScreen]
class ProfileNavigationRoute extends _i62.PageRouteInfo<void> {
  const ProfileNavigationRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i42.ProfileNavigationScreen();
    },
  );
}

/// generated route for
/// [_i43.ProfileSettingScreen]
class ProfileSettingRoute extends _i62.PageRouteInfo<void> {
  const ProfileSettingRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ProfileSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileSettingRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i43.ProfileSettingScreen();
    },
  );
}

/// generated route for
/// [_i44.RecentlyViewedProductScreen]
class RecentlyViewedProductRoute
    extends _i62.PageRouteInfo<RecentlyViewedProductRouteArgs> {
  RecentlyViewedProductRoute({
    _i64.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          RecentlyViewedProductRoute.name,
          args: RecentlyViewedProductRouteArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'RecentlyViewedProductRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RecentlyViewedProductRouteArgs>();
      return _i44.RecentlyViewedProductScreen(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class RecentlyViewedProductRouteArgs {
  const RecentlyViewedProductRouteArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i64.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'RecentlyViewedProductRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i45.ResetPasswordScreen]
class ResetPasswordRoute extends _i62.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i45.ResetPasswordScreen();
    },
  );
}

/// generated route for
/// [_i46.ReviewScreen]
class ReviewRoute extends _i62.PageRouteInfo<void> {
  const ReviewRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ReviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i46.ReviewScreen();
    },
  );
}

/// generated route for
/// [_i47.SearchScreen]
class SearchRoute extends _i62.PageRouteInfo<void> {
  const SearchRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i47.SearchScreen();
    },
  );
}

/// generated route for
/// [_i48.SecurityMenuScreen]
class SecurityMenuRoute extends _i62.PageRouteInfo<void> {
  const SecurityMenuRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SecurityMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecurityMenuRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i48.SecurityMenuScreen();
    },
  );
}

/// generated route for
/// [_i49.SellItemScreen]
class SellItemRoute extends _i62.PageRouteInfo<SellItemRouteArgs> {
  SellItemRoute({
    _i64.Key? key,
    _i66.ProductModel? product,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          SellItemRoute.name,
          args: SellItemRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'SellItemRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SellItemRouteArgs>(
          orElse: () => const SellItemRouteArgs());
      return _i49.SellItemScreen(
        key: args.key,
        product: args.product,
      );
    },
  );
}

class SellItemRouteArgs {
  const SellItemRouteArgs({
    this.key,
    this.product,
  });

  final _i64.Key? key;

  final _i66.ProductModel? product;

  @override
  String toString() {
    return 'SellItemRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i50.SellNavigationScreen]
class SellNavigationRoute extends _i62.PageRouteInfo<void> {
  const SellNavigationRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SellNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SellNavigationRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i50.SellNavigationScreen();
    },
  );
}

/// generated route for
/// [_i51.SendAnOfferScreen]
class SendAnOfferRoute extends _i62.PageRouteInfo<SendAnOfferRouteArgs> {
  SendAnOfferRoute({
    _i64.Key? key,
    required _i66.ProductModel product,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          SendAnOfferRoute.name,
          args: SendAnOfferRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'SendAnOfferRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SendAnOfferRouteArgs>();
      return _i51.SendAnOfferScreen(
        key: args.key,
        product: args.product,
      );
    },
  );
}

class SendAnOfferRouteArgs {
  const SendAnOfferRouteArgs({
    this.key,
    required this.product,
  });

  final _i64.Key? key;

  final _i66.ProductModel product;

  @override
  String toString() {
    return 'SendAnOfferRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i52.SettingScreen]
class SettingRoute extends _i62.PageRouteInfo<void> {
  const SettingRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i52.SettingScreen();
    },
  );
}

/// generated route for
/// [_i53.ShopValueScreen]
class ShopValueRoute extends _i62.PageRouteInfo<void> {
  const ShopValueRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ShopValueRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopValueRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i53.ShopValueScreen();
    },
  );
}

/// generated route for
/// [_i54.SignUpScreen]
class SignUpRoute extends _i62.PageRouteInfo<void> {
  const SignUpRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i54.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i55.SizeSelectionPage]
class SizeSelectionRoute extends _i62.PageRouteInfo<void> {
  const SizeSelectionRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SizeSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SizeSelectionRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i55.SizeSelectionPage();
    },
  );
}

/// generated route for
/// [_i56.StylePage]
class StyleRoute extends _i62.PageRouteInfo<void> {
  const StyleRoute({List<_i62.PageRouteInfo>? children})
      : super(
          StyleRoute.name,
          initialChildren: children,
        );

  static const String name = 'StyleRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i56.StylePage();
    },
  );
}

/// generated route for
/// [_i57.SubCategoryProductScreen]
class SubCategoryProductRoute extends _i62.PageRouteInfo<void> {
  const SubCategoryProductRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SubCategoryProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryProductRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      return const _i57.SubCategoryProductScreen();
    },
  );
}

/// generated route for
/// [_i58.SubCategoryScreen]
class SubCategoryRoute extends _i62.PageRouteInfo<SubCategoryRouteArgs> {
  SubCategoryRoute({
    _i64.Key? key,
    required List<_i68.CategoryModel> subCategories,
    required String categoryName,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          SubCategoryRoute.name,
          args: SubCategoryRouteArgs(
            key: key,
            subCategories: subCategories,
            categoryName: categoryName,
          ),
          initialChildren: children,
        );

  static const String name = 'SubCategoryRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubCategoryRouteArgs>();
      return _i58.SubCategoryScreen(
        key: args.key,
        subCategories: args.subCategories,
        categoryName: args.categoryName,
      );
    },
  );
}

class SubCategoryRouteArgs {
  const SubCategoryRouteArgs({
    this.key,
    required this.subCategories,
    required this.categoryName,
  });

  final _i64.Key? key;

  final List<_i68.CategoryModel> subCategories;

  final String categoryName;

  @override
  String toString() {
    return 'SubCategoryRouteArgs{key: $key, subCategories: $subCategories, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i59.UserProfileDetailsScreen]
class UserProfileDetailsRoute
    extends _i62.PageRouteInfo<UserProfileDetailsRouteArgs> {
  UserProfileDetailsRoute({
    _i63.Key? key,
    String? username,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          UserProfileDetailsRoute.name,
          args: UserProfileDetailsRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'UserProfileDetailsRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserProfileDetailsRouteArgs>(
          orElse: () => const UserProfileDetailsRouteArgs());
      return _i59.UserProfileDetailsScreen(
        key: args.key,
        username: args.username,
      );
    },
  );
}

class UserProfileDetailsRouteArgs {
  const UserProfileDetailsRouteArgs({
    this.key,
    this.username,
  });

  final _i63.Key? key;

  final String? username;

  @override
  String toString() {
    return 'UserProfileDetailsRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i60.VerifyEmailPage]
class VerifyEmailRoute extends _i62.PageRouteInfo<VerifyEmailRouteArgs> {
  VerifyEmailRoute({
    _i67.Key? key,
    required String email,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          VerifyEmailRoute.name,
          args: VerifyEmailRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyEmailRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyEmailRouteArgs>();
      return _i60.VerifyEmailPage(
        key: args.key,
        email: args.email,
      );
    },
  );
}

class VerifyEmailRouteArgs {
  const VerifyEmailRouteArgs({
    this.key,
    required this.email,
  });

  final _i67.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifyEmailRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i61.VintageFilteredProductScreen]
class VintageFilteredProductRoute
    extends _i62.PageRouteInfo<VintageFilteredProductRouteArgs> {
  VintageFilteredProductRoute({
    _i64.Key? key,
    required _i65.Enum$StyleEnum style,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          VintageFilteredProductRoute.name,
          args: VintageFilteredProductRouteArgs(
            key: key,
            style: style,
          ),
          initialChildren: children,
        );

  static const String name = 'VintageFilteredProductRoute';

  static _i62.PageInfo page = _i62.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VintageFilteredProductRouteArgs>();
      return _i61.VintageFilteredProductScreen(
        key: args.key,
        style: args.style,
      );
    },
  );
}

class VintageFilteredProductRouteArgs {
  const VintageFilteredProductRouteArgs({
    this.key,
    required this.style,
  });

  final _i64.Key? key;

  final _i65.Enum$StyleEnum style;

  @override
  String toString() {
    return 'VintageFilteredProductRouteArgs{key: $key, style: $style}';
  }
}
