import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/restaurant_card/restaurant_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'restaurant_awards_widget.dart' show RestaurantAwardsWidget;
import 'package:flutter/material.dart';

class RestaurantAwardsModel extends FlutterFlowModel<RestaurantAwardsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for RestaurantCard component.
  late RestaurantCardModel restaurantCardModel1;
  // Model for RestaurantCard component.
  late RestaurantCardModel restaurantCardModel2;
  // Model for RestaurantCard component.
  late RestaurantCardModel restaurantCardModel3;
  // Model for RestaurantCard component.
  late RestaurantCardModel restaurantCardModel4;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    restaurantCardModel1 = createModel(context, () => RestaurantCardModel());
    restaurantCardModel2 = createModel(context, () => RestaurantCardModel());
    restaurantCardModel3 = createModel(context, () => RestaurantCardModel());
    restaurantCardModel4 = createModel(context, () => RestaurantCardModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    tabBarController?.dispose();
    restaurantCardModel1.dispose();
    restaurantCardModel2.dispose();
    restaurantCardModel3.dispose();
    restaurantCardModel4.dispose();
    navigatorModel.dispose();
  }
}
