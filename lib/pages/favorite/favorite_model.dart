import '/componnents/navigator/navigator_widget.dart';
import '/componnents/select_choice_indicator/select_choice_indicator_widget.dart';
import '/componnents/store_info4_modal/store_info4_modal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'favorite_widget.dart' show FavoriteWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoriteModel extends FlutterFlowModel<FavoriteWidget> {
  ///  Local state fields for this page.

  String selected = 'Lunch & Dinner';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SelectChoiceIndicator component.
  late SelectChoiceIndicatorModel selectChoiceIndicatorModel1;
  // Model for SelectChoiceIndicator component.
  late SelectChoiceIndicatorModel selectChoiceIndicatorModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    selectChoiceIndicatorModel1 =
        createModel(context, () => SelectChoiceIndicatorModel());
    selectChoiceIndicatorModel2 =
        createModel(context, () => SelectChoiceIndicatorModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    selectChoiceIndicatorModel1.dispose();
    selectChoiceIndicatorModel2.dispose();
    navigatorModel.dispose();
  }
}
