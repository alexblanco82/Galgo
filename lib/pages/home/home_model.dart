import '/componnents/delivery_items/delivery_items_widget.dart';
import '/componnents/nav_bar/nav_bar_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/order_item/order_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  String selected = 'Delivery';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DeliveryItems component.
  late DeliveryItemsModel deliveryItemsModel1;
  // Model for DeliveryItems component.
  late DeliveryItemsModel deliveryItemsModel2;
  // Model for DeliveryItems component.
  late DeliveryItemsModel deliveryItemsModel3;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel1;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel2;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    deliveryItemsModel1 = createModel(context, () => DeliveryItemsModel());
    deliveryItemsModel2 = createModel(context, () => DeliveryItemsModel());
    deliveryItemsModel3 = createModel(context, () => DeliveryItemsModel());
    orderItemModel1 = createModel(context, () => OrderItemModel());
    orderItemModel2 = createModel(context, () => OrderItemModel());
    navBarModel = createModel(context, () => NavBarModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    deliveryItemsModel1.dispose();
    deliveryItemsModel2.dispose();
    deliveryItemsModel3.dispose();
    orderItemModel1.dispose();
    orderItemModel2.dispose();
    navBarModel.dispose();
    navigatorModel.dispose();
  }
}
