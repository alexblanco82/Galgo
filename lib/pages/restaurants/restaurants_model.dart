import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/restaurant_card/restaurant_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'restaurants_widget.dart' show RestaurantsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RestaurantsModel extends FlutterFlowModel<RestaurantsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for RestaurantCard component.
  late RestaurantCardModel restaurantCardModel1;
  // Model for RestaurantCard component.
  late RestaurantCardModel restaurantCardModel2;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    restaurantCardModel1 = createModel(context, () => RestaurantCardModel());
    restaurantCardModel2 = createModel(context, () => RestaurantCardModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    restaurantCardModel1.dispose();
    restaurantCardModel2.dispose();
    navigatorModel.dispose();
  }
}
