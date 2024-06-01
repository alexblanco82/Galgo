import '/componnents/header_icon_plus/header_icon_plus_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'order_options_widget.dart' show OrderOptionsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderOptionsModel extends FlutterFlowModel<OrderOptionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderIconPlus component.
  late HeaderIconPlusModel headerIconPlusModel;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue4;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue5;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue6;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue7;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue8;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue9;
  // State field(s) for SpecialInstructionTextField widget.
  FocusNode? specialInstructionTextFieldFocusNode;
  TextEditingController? specialInstructionTextFieldTextController;
  String? Function(BuildContext, String?)?
      specialInstructionTextFieldTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue10;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue11;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerIconPlusModel = createModel(context, () => HeaderIconPlusModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerIconPlusModel.dispose();
    specialInstructionTextFieldFocusNode?.dispose();
    specialInstructionTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
