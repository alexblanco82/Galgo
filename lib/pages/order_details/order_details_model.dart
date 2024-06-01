import '/componnents/header/header_widget.dart';
import '/componnents/nav_bar/nav_bar_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/order_details_items/order_details_items_widget.dart';
import '/componnents/order_items/order_items_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'order_details_widget.dart' show OrderDetailsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderDetailsModel extends FlutterFlowModel<OrderDetailsWidget> {
  ///  Local state fields for this page.

  String currentPage = 'All';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for OrderItems component.
  late OrderItemsModel orderItemsModel1;
  // Model for OrderItems component.
  late OrderItemsModel orderItemsModel2;
  // Model for OrderDetailsItems component.
  late OrderDetailsItemsModel orderDetailsItemsModel1;
  // Model for OrderDetailsItems component.
  late OrderDetailsItemsModel orderDetailsItemsModel2;
  // Model for OrderDetailsItems component.
  late OrderDetailsItemsModel orderDetailsItemsModel3;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    orderItemsModel1 = createModel(context, () => OrderItemsModel());
    orderItemsModel2 = createModel(context, () => OrderItemsModel());
    orderDetailsItemsModel1 =
        createModel(context, () => OrderDetailsItemsModel());
    orderDetailsItemsModel2 =
        createModel(context, () => OrderDetailsItemsModel());
    orderDetailsItemsModel3 =
        createModel(context, () => OrderDetailsItemsModel());
    navBarModel = createModel(context, () => NavBarModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    orderItemsModel1.dispose();
    orderItemsModel2.dispose();
    orderDetailsItemsModel1.dispose();
    orderDetailsItemsModel2.dispose();
    orderDetailsItemsModel3.dispose();
    navBarModel.dispose();
    navigatorModel.dispose();
  }
}
