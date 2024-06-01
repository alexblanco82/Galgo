import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/componnents/available_country/available_country_widget.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'update_phone_number_widget.dart' show UpdatePhoneNumberWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdatePhoneNumberModel extends FlutterFlowModel<UpdatePhoneNumberWidget> {
  ///  Local state fields for this page.

  CountryStruct? selectedCountry;
  void updateSelectedCountryStruct(Function(CountryStruct) updateFn) =>
      updateFn(selectedCountry ??= CountryStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for PhoneNumberTextField widget.
  FocusNode? phoneNumberTextFieldFocusNode;
  TextEditingController? phoneNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      phoneNumberTextFieldTextControllerValidator;
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
    phoneNumberTextFieldFocusNode?.dispose();
    phoneNumberTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
