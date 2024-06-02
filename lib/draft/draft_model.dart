import '/flutter_flow/flutter_flow_util.dart';
import 'draft_widget.dart' show DraftWidget;
import 'package:flutter/material.dart';

class DraftModel extends FlutterFlowModel<DraftWidget> {
  ///  Local state fields for this page.

  bool showMore = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
