import '/flutter_flow/flutter_flow_util.dart';
import 'ec_page_widget.dart' show EcPageWidget;
import 'package:flutter/material.dart';

class EcPageModel extends FlutterFlowModel<EcPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
