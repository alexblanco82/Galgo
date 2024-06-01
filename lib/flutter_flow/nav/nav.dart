import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier, [Widget? entryPage]) =>
    GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: entryPage ?? StartWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => entryPage ?? StartWidget(),
          routes: [
            FFRoute(
              name: 'Loadings',
              path: 'loadings',
              builder: (context, params) => LoadingsWidget(),
            ),
            FFRoute(
              name: 'Start',
              path: 'start',
              builder: (context, params) => StartWidget(),
            ),
            FFRoute(
              name: 'SignUp',
              path: 'signUp',
              builder: (context, params) => SignUpWidget(),
            ),
            FFRoute(
              name: 'PinCode',
              path: 'pinCode',
              builder: (context, params) => PinCodeWidget(),
            ),
            FFRoute(
              name: 'AccountEmail',
              path: 'accountEmail',
              builder: (context, params) => AccountEmailWidget(),
            ),
            FFRoute(
              name: 'AccountPassword',
              path: 'accountPassword',
              builder: (context, params) => AccountPasswordWidget(),
            ),
            FFRoute(
              name: 'AccountName',
              path: 'accountName',
              builder: (context, params) => AccountNameWidget(),
            ),
            FFRoute(
              name: 'AcceptTerms',
              path: 'acceptTerms',
              builder: (context, params) => AcceptTermsWidget(),
            ),
            FFRoute(
              name: 'Updates',
              path: 'updates',
              builder: (context, params) => UpdatesWidget(),
            ),
            FFRoute(
              name: 'PermissionAccess',
              path: 'permissionAccess',
              builder: (context, params) => PermissionAccessWidget(),
            ),
            FFRoute(
              name: 'PaymentMethod',
              path: 'paymentMethod',
              builder: (context, params) => PaymentMethodWidget(),
            ),
            FFRoute(
              name: 'AddCreditCard',
              path: 'addCreditCard',
              builder: (context, params) => AddCreditCardWidget(),
            ),
            FFRoute(
              name: 'AddAddress',
              path: 'addAddress',
              builder: (context, params) => AddAddressWidget(),
            ),
            FFRoute(
              name: 'Membership',
              path: 'membership',
              builder: (context, params) => MembershipWidget(),
            ),
            FFRoute(
              name: 'FindNearFood',
              path: 'findNearFood',
              builder: (context, params) => FindNearFoodWidget(),
            ),
            FFRoute(
              name: 'Delivery',
              path: 'delivery',
              builder: (context, params) => DeliveryWidget(),
            ),
            FFRoute(
              name: 'Home',
              path: 'home',
              builder: (context, params) => HomeWidget(),
            ),
            FFRoute(
              name: 'Filter',
              path: 'filter',
              builder: (context, params) => FilterWidget(),
            ),
            FFRoute(
              name: 'Search1',
              path: 'search1',
              builder: (context, params) => Search1Widget(),
            ),
            FFRoute(
              name: 'Search',
              path: 'search',
              builder: (context, params) => SearchWidget(),
            ),
            FFRoute(
              name: 'Grocery',
              path: 'grocery',
              builder: (context, params) => GroceryWidget(),
            ),
            FFRoute(
              name: 'Restaurants',
              path: 'restaurants',
              builder: (context, params) => RestaurantsWidget(),
            ),
            FFRoute(
              name: 'SpecialityFoods',
              path: 'specialityFoods',
              builder: (context, params) => SpecialityFoodsWidget(),
            ),
            FFRoute(
              name: 'StoreInfo',
              path: 'storeInfo',
              builder: (context, params) => StoreInfoWidget(),
            ),
            FFRoute(
              name: 'Store',
              path: 'store',
              builder: (context, params) => StoreWidget(),
            ),
            FFRoute(
              name: 'GroupOrder',
              path: 'groupOrder',
              builder: (context, params) => GroupOrderWidget(),
            ),
            FFRoute(
              name: 'OrderName',
              path: 'orderName',
              builder: (context, params) => OrderNameWidget(),
            ),
            FFRoute(
              name: 'OrderNameDetails',
              path: 'orderNameDetails',
              builder: (context, params) => OrderNameDetailsWidget(),
            ),
            FFRoute(
              name: 'CoverOrder',
              path: 'coverOrder',
              builder: (context, params) => CoverOrderWidget(),
            ),
            FFRoute(
              name: 'OrderOptions',
              path: 'orderOptions',
              builder: (context, params) => OrderOptionsWidget(),
            ),
            FFRoute(
              name: 'OrderOptionDetails',
              path: 'orderOptionDetails',
              builder: (context, params) => OrderOptionDetailsWidget(),
            ),
            FFRoute(
              name: 'Draft',
              path: 'draft',
              builder: (context, params) => DraftWidget(),
            ),
            FFRoute(
              name: 'PopularRestaurants',
              path: 'popularRestaurants',
              builder: (context, params) => PopularRestaurantsWidget(),
            ),
            FFRoute(
              name: 'Browse',
              path: 'browse',
              builder: (context, params) => BrowseWidget(),
            ),
            FFRoute(
              name: 'Baskets',
              path: 'baskets',
              builder: (context, params) => BasketsWidget(),
            ),
            FFRoute(
              name: 'BasketYourOrders',
              path: 'basketYourOrders',
              builder: (context, params) => BasketYourOrdersWidget(),
            ),
            FFRoute(
              name: 'Account',
              path: 'account',
              builder: (context, params) => AccountWidget(),
            ),
            FFRoute(
              name: 'AccountDetails',
              path: 'accountDetails',
              builder: (context, params) => AccountDetailsWidget(),
            ),
            FFRoute(
              name: 'AccountEdit',
              path: 'accountEdit',
              builder: (context, params) => AccountEditWidget(),
            ),
            FFRoute(
              name: 'UpdateFirstName',
              path: 'updateFirstName',
              builder: (context, params) => UpdateFirstNameWidget(),
            ),
            FFRoute(
              name: 'UpdatePhoneNumber',
              path: 'updatePhoneNumber',
              builder: (context, params) => UpdatePhoneNumberWidget(),
            ),
            FFRoute(
              name: 'UpdateEmail',
              path: 'updateEmail',
              builder: (context, params) => UpdateEmailWidget(),
            ),
            FFRoute(
              name: 'VerifyPassword',
              path: 'verifyPassword',
              builder: (context, params) => VerifyPasswordWidget(),
            ),
            FFRoute(
              name: 'Wallet',
              path: 'wallet',
              builder: (context, params) => WalletWidget(),
            ),
            FFRoute(
              name: 'Vouchers',
              path: 'vouchers',
              builder: (context, params) => VouchersWidget(),
            ),
            FFRoute(
              name: 'AddCode',
              path: 'addCode',
              builder: (context, params) => AddCodeWidget(),
            ),
            FFRoute(
              name: 'AccountPromotions',
              path: 'accountPromotions',
              builder: (context, params) => AccountPromotionsWidget(),
            ),
            FFRoute(
              name: 'AboutApp',
              path: 'aboutApp',
              builder: (context, params) => AboutAppWidget(),
            ),
            FFRoute(
              name: 'RestaurantAwards',
              path: 'restaurantAwards',
              builder: (context, params) => RestaurantAwardsWidget(),
            ),
            FFRoute(
              name: 'OrderPickedItem',
              path: 'orderPickedItem',
              builder: (context, params) => OrderPickedItemWidget(),
            ),
            FFRoute(
              name: 'OrderPickedDetails',
              path: 'orderPickedDetails',
              builder: (context, params) => OrderPickedDetailsWidget(),
            ),
            FFRoute(
              name: 'UpdateTerms',
              path: 'updateTerms',
              builder: (context, params) => UpdateTermsWidget(),
            ),
            FFRoute(
              name: 'CourierProfile',
              path: 'courierProfile',
              builder: (context, params) => CourierProfileWidget(),
            ),
            FFRoute(
              name: 'RateCourier',
              path: 'rateCourier',
              builder: (context, params) => RateCourierWidget(),
            ),
            FFRoute(
              name: 'ThanksForRate',
              path: 'thanksForRate',
              builder: (context, params) => ThanksForRateWidget(),
            ),
            FFRoute(
              name: 'Message',
              path: 'message',
              builder: (context, params) => MessageWidget(),
            ),
            FFRoute(
              name: 'OrderDetailItems',
              path: 'orderDetailItems',
              builder: (context, params) => OrderDetailItemsWidget(),
            ),
            FFRoute(
              name: 'OrderDetails',
              path: 'orderDetails',
              builder: (context, params) => OrderDetailsWidget(),
            ),
            FFRoute(
              name: 'Favorite',
              path: 'favorite',
              builder: (context, params) => FavoriteWidget(),
            ),
            FFRoute(
              name: 'CourierDetails1',
              path: 'courierDetails1',
              builder: (context, params) => CourierDetails1Widget(),
            ),
            FFRoute(
              name: 'CourierDetails',
              path: 'courierDetails',
              builder: (context, params) => CourierDetailsWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 250),
      );
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    Key? key,
    required this.state,
    required this.child,
  }) : super(key: key);

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();
    // Handle erroneous links from Firebase Dynamic Links.
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      SchedulerBinding.instance.addPostFrameCallback((_) => context.go('/'));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
