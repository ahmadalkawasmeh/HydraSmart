import '/flutter_flow/flutter_flow_util.dart';
import 'ph_page_widget.dart' show PhPageWidget;
import 'package:flutter/material.dart';

class PhPageModel extends FlutterFlowModel<PhPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
