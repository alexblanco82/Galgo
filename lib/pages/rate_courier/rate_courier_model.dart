import '/componnents/add_tip_modal/add_tip_modal_widget.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/rate_courier_item/rate_courier_item_widget.dart';
import '/componnents/service_rate_item/service_rate_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'rate_courier_widget.dart' show RateCourierWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RateCourierModel extends FlutterFlowModel<RateCourierWidget> {
  ///  Local state fields for this page.

  String? selectedLike = '';

  String? selectedRate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for RateCourierItem component.
  late RateCourierItemModel rateCourierItemModel1;
  // Model for RateCourierItem component.
  late RateCourierItemModel rateCourierItemModel2;
  // Model for ServiceRateItem component.
  late ServiceRateItemModel serviceRateItemModel1;
  // Model for ServiceRateItem component.
  late ServiceRateItemModel serviceRateItemModel2;
  // Model for ServiceRateItem component.
  late ServiceRateItemModel serviceRateItemModel3;
  // Model for ServiceRateItem component.
  late ServiceRateItemModel serviceRateItemModel4;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    rateCourierItemModel1 = createModel(context, () => RateCourierItemModel());
    rateCourierItemModel2 = createModel(context, () => RateCourierItemModel());
    serviceRateItemModel1 = createModel(context, () => ServiceRateItemModel());
    serviceRateItemModel2 = createModel(context, () => ServiceRateItemModel());
    serviceRateItemModel3 = createModel(context, () => ServiceRateItemModel());
    serviceRateItemModel4 = createModel(context, () => ServiceRateItemModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    rateCourierItemModel1.dispose();
    rateCourierItemModel2.dispose();
    serviceRateItemModel1.dispose();
    serviceRateItemModel2.dispose();
    serviceRateItemModel3.dispose();
    serviceRateItemModel4.dispose();
    navigatorModel.dispose();
  }
}
