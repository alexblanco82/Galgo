import '/componnents/divider/divider_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'update_terms_modal_widget.dart' show UpdateTermsModalWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateTermsModalModel extends FlutterFlowModel<UpdateTermsModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Divider component.
  late DividerModel dividerModel;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {
    dividerModel = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    dividerModel.dispose();
  }
}