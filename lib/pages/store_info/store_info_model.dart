import '/componnents/navigator/navigator_widget.dart';
import '/componnents/picked_itedm/picked_itedm_widget.dart';
import '/componnents/select_choice/select_choice_widget.dart';
import '/componnents/store_info4_modal/store_info4_modal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'store_info_widget.dart' show StoreInfoWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StoreInfoModel extends FlutterFlowModel<StoreInfoWidget> {
  ///  Local state fields for this page.

  String selected = 'Delivery';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SelectChoice component.
  late SelectChoiceModel selectChoiceModel1;
  // Model for SelectChoice component.
  late SelectChoiceModel selectChoiceModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for PickedItedm component.
  late PickedItedmModel pickedItedmModel1;
  // Model for PickedItedm component.
  late PickedItedmModel pickedItedmModel2;
  // Model for PickedItedm component.
  late PickedItedmModel pickedItedmModel3;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    selectChoiceModel1 = createModel(context, () => SelectChoiceModel());
    selectChoiceModel2 = createModel(context, () => SelectChoiceModel());
    pickedItedmModel1 = createModel(context, () => PickedItedmModel());
    pickedItedmModel2 = createModel(context, () => PickedItedmModel());
    pickedItedmModel3 = createModel(context, () => PickedItedmModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    selectChoiceModel1.dispose();
    selectChoiceModel2.dispose();
    pickedItedmModel1.dispose();
    pickedItedmModel2.dispose();
    pickedItedmModel3.dispose();
    navigatorModel.dispose();
  }
}
