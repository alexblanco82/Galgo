import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Loadings': ParameterData.none(),
  'Start': ParameterData.none(),
  'SignUp': ParameterData.none(),
  'PinCode': ParameterData.none(),
  'AccountEmail': ParameterData.none(),
  'AccountPassword': ParameterData.none(),
  'AccountName': ParameterData.none(),
  'AcceptTerms': ParameterData.none(),
  'Updates': ParameterData.none(),
  'PermissionAccess': ParameterData.none(),
  'PaymentMethod': ParameterData.none(),
  'AddCreditCard': ParameterData.none(),
  'AddAddress': ParameterData.none(),
  'Membership': ParameterData.none(),
  'FindNearFood': ParameterData.none(),
  'Delivery': ParameterData.none(),
  'Home': ParameterData.none(),
  'Filter': ParameterData.none(),
  'Search1': ParameterData.none(),
  'Search': ParameterData.none(),
  'Grocery': ParameterData.none(),
  'Restaurants': ParameterData.none(),
  'SpecialityFoods': ParameterData.none(),
  'StoreInfo': ParameterData.none(),
  'Store': ParameterData.none(),
  'GroupOrder': ParameterData.none(),
  'OrderName': ParameterData.none(),
  'OrderNameDetails': ParameterData.none(),
  'CoverOrder': ParameterData.none(),
  'OrderOptions': ParameterData.none(),
  'OrderOptionDetails': ParameterData.none(),
  'Draft': ParameterData.none(),
  'PopularRestaurants': ParameterData.none(),
  'Browse': ParameterData.none(),
  'Baskets': ParameterData.none(),
  'BasketYourOrders': ParameterData.none(),
  'Account': ParameterData.none(),
  'AccountDetails': ParameterData.none(),
  'AccountEdit': ParameterData.none(),
  'UpdateFirstName': ParameterData.none(),
  'UpdatePhoneNumber': ParameterData.none(),
  'UpdateEmail': ParameterData.none(),
  'VerifyPassword': ParameterData.none(),
  'Wallet': ParameterData.none(),
  'Vouchers': ParameterData.none(),
  'AddCode': ParameterData.none(),
  'AccountPromotions': ParameterData.none(),
  'AboutApp': ParameterData.none(),
  'RestaurantAwards': ParameterData.none(),
  'OrderPickedItem': ParameterData.none(),
  'OrderPickedDetails': ParameterData.none(),
  'UpdateTerms': ParameterData.none(),
  'CourierProfile': ParameterData.none(),
  'RateCourier': ParameterData.none(),
  'ThanksForRate': ParameterData.none(),
  'Message': ParameterData.none(),
  'OrderDetailItems': ParameterData.none(),
  'OrderDetails': ParameterData.none(),
  'Favorite': ParameterData.none(),
  'CourierDetails1': ParameterData.none(),
  'CourierDetails': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
