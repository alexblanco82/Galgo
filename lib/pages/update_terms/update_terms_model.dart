import '/componnents/divider/divider_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/update_terms_modal/update_terms_modal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'update_terms_widget.dart' show UpdateTermsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateTermsModel extends FlutterFlowModel<UpdateTermsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Divider component.
  late DividerModel dividerModel;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    dividerModel = createModel(context, () => DividerModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dividerModel.dispose();
    navigatorModel.dispose();
  }
}
