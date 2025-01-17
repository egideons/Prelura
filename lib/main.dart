import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/controller/notification_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/firebase_options.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/theme.dart';
import 'package:sizer/sizer.dart';

import 'controller/theme_notifier.dart';

// void main() async {
//   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   await dotenv.load(fileName: '.env');
//   await Hive.initFlutter();
//   await Hive.openBox('settings');
//   Stripe.publishableKey =
//   'pk_test_51QZLUu2LCwCAAIPiQaNscHb0rfE53OokrEEboDTJWn6BxMsGTib5S6u4rMflxm7RWnSK213nOeUj5uTYcpBykNmB00MDeN70RI';
//
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//
//   // Initialize dependencies
//   final container = await initializeDependencies();
//
//   // Create and inject the router to handle deep links
//   final appRouter = container.read(router);
//
//   // Handle deep links
//   await _handleDeepLinks(appRouter);
//
//   runApp(
//     UncontrolledProviderScope(
//       container: container,
//       child: const MyApp(),
//     ),
//   );
// }
//
// Future<void> _handleDeepLinks(AppRouter appRouter) async {
//   try {
//     log(":::: You called the deep link ::: ${appRouter.}");
//     // Handle the initial deep link
//     final initialLink = await getInitialLink();
//     if (initialLink != null) {
//       appRouter.push(Uri.parse(initialLink));
//     }
//     //
//     // // Listen for incoming deep links
//     // uriLinkStream.listen((Uri? uri) {
//     //   if (uri != null) {
//     //     appRouter.pushUri(uri);
//     //   }
//     // });
//   } catch (e) {
//     debugPrint('Error handling deep link: $e');
//   }
// }
//
// class MyApp extends ConsumerWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     HelperFunction.genRef = ref;
//     final themeMode = ref.watch(themeNotifierProvider);
//     ref.watch(notificationProvider);
//
//     // Remove splash screen after determining auth state
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       FlutterNativeSplash.remove();
//     });
//
//     return Sizer(
//       builder: (BuildContext context, Orientation orientation,
//           DeviceType deviceType) {
//         return MaterialApp.router(
//           title: 'Prelura App',
//           debugShowCheckedModeBanner: false,
//           theme: PreluraTheme.lightMode,
//           darkTheme: PreluraTheme.darkTheme.copyWith(textTheme: TextTheme()),
//           themeMode: themeMode,
//           routerConfig: ref.watch(router).config(
//             // Handle deep links via AutoRoute's deep link handling
//             reevaluateListenable: ReevaluateListenable.stream(
//               ref.watch(authStateProvider.stream),
//             ),
//             navigatorObservers: () => [
//               AppRouterObserver(ref),
//             ],
//           ),
//           builder: (context, child) {
//             return child!;
//           },
//         );
//       },
//     );
//   }
// }
//

///
///
///
void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load(fileName: '.env');
  await Hive.initFlutter();
  await Hive.openBox('settings');
  Stripe.publishableKey =
      'pk_test_51QZLUu2LCwCAAIPiQaNscHb0rfE53OokrEEboDTJWn6BxMsGTib5S6u4rMflxm7RWnSK213nOeUj5uTYcpBykNmB00MDeN70RI';

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    UncontrolledProviderScope(
      container: await initializeDependencies(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    HelperFunction.genRef = ref;
    final themeMode = ref.watch(themeNotifierProvider);
    ref.watch(notificationProvider);
    // Remove splash screen after determining auth state
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp.router(
          title: 'Prelura App',
          debugShowCheckedModeBanner: false,
          theme: PreluraTheme.lightMode,
          darkTheme: PreluraTheme.darkTheme.copyWith(textTheme: TextTheme()),
          themeMode: themeMode,
          routerConfig: ref.watch(router).config(
                deepLinkBuilder: (deepLink) {
                  debugPrint('Received deep link: ${deepLink.path}');
                  return deepLink;
                },
                //this line of code listens to the authstate provider
                // and anytime the authstate changes the AutoRoute Guard is reevaluted
                // and refreshed to update the route to an authenticated or unauthenicated state
                reevaluateListenable: ReevaluateListenable.stream(
                  // still trying to figure out a way to listen to the provider instead of the
                  // stream since its deprecated.
                  ref.watch(authStateProvider.stream),
                ),
                navigatorObservers: () => [
                  AppRouterObserver(ref),
                ],
              ),
          builder: (context, child) {
            return child!;
          },
        );
      },
    );
  }
}
