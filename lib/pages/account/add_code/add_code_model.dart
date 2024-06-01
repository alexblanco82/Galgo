import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_code_widget.dart' show AddCodeWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCodeModel extends FlutterFlowModel<AddCodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for AddVoucherCodeTextField widget.
  FocusNode? addVoucherCodeTextFieldFocusNode;
  TextEditingController? addVoucherCodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      addVoucherCodeTextFieldTextControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    addVoucherCodeTextFieldFocusNode?.dispose();
    addVoucherCodeTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
