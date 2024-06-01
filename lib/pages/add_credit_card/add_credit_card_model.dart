import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/componnents/available_country/available_country_widget.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_credit_card_widget.dart' show AddCreditCardWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCreditCardModel extends FlutterFlowModel<AddCreditCardWidget> {
  ///  Local state fields for this page.

  CountryStruct? selectedCountry;
  void updateSelectedCountryStruct(Function(CountryStruct) updateFn) =>
      updateFn(selectedCountry ??= CountryStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for CardNumberTextField widget.
  FocusNode? cardNumberTextFieldFocusNode;
  TextEditingController? cardNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      cardNumberTextFieldTextControllerValidator;
  String? _cardNumberTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lx74hulo' /* Invalid or unsupported card nu... */,
      );
    }

    return null;
  }

  // State field(s) for ExpDateTextField widget.
  FocusNode? expDateTextFieldFocusNode;
  TextEditingController? expDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      expDateTextFieldTextControllerValidator;
  String? _expDateTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8tbi2gqq' /* Card expired */,
      );
    }

    return null;
  }

  // State field(s) for CVVTextField widget.
  FocusNode? cVVTextFieldFocusNode;
  TextEditingController? cVVTextFieldTextController;
  String? Function(BuildContext, String?)? cVVTextFieldTextControllerValidator;
  String? _cVVTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'd5sn7im0' /* Code too short */,
      );
    }

    return null;
  }

  // State field(s) for PostcodeTextField widget.
  FocusNode? postcodeTextFieldFocusNode;
  TextEditingController? postcodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      postcodeTextFieldTextControllerValidator;
  String? _postcodeTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zzidt5hp' /* Please enter a valid postal co... */,
      );
    }

    return null;
  }

  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    cardNumberTextFieldTextControllerValidator =
        _cardNumberTextFieldTextControllerValidator;
    expDateTextFieldTextControllerValidator =
        _expDateTextFieldTextControllerValidator;
    cVVTextFieldTextControllerValidator = _cVVTextFieldTextControllerValidator;
    postcodeTextFieldTextControllerValidator =
        _postcodeTextFieldTextControllerValidator;
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    cardNumberTextFieldFocusNode?.dispose();
    cardNumberTextFieldTextController?.dispose();

    expDateTextFieldFocusNode?.dispose();
    expDateTextFieldTextController?.dispose();

    cVVTextFieldFocusNode?.dispose();
    cVVTextFieldTextController?.dispose();

    postcodeTextFieldFocusNode?.dispose();
    postcodeTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
